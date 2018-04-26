'use strict';
Object.defineProperty(exports, "__esModule", { value: true });
const vscode = require("vscode");
const ncp = require("copy-paste");
// this method is called when your extension is activated
// your extension is activated the very first time the command is executed
function activate(context) {
    let simpleGit;
    try {
        simpleGit = require('simple-git')(vscode.workspace.workspaceFolders[0].uri.fsPath);
    }
    catch (error) {
        console.error('Couldn\'t find git repository');
    }
    let disposable = vscode.commands.registerCommand('extension.copyBranchName', () => {
        if (!simpleGit) {
            console.error('Copy name of current branch extension command failed: This is not a git repository');
            return;
        }
        simpleGit.branchLocal((error, data) => {
            if (error) {
                console.error(error);
            }
            else {
                ncp.copy(data.current, () => console.log('Current git branch name has been copied to the system clipboard'));
            }
        });
    });
    context.subscriptions.push(disposable);
}
exports.activate = activate;
// this method is called when your extension is deactivated
function deactivate() {
}
exports.deactivate = deactivate;
//# sourceMappingURL=extension.js.map