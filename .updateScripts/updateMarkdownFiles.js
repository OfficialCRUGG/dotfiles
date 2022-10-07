const fs = require("fs");

const vscodeTemplate = fs.readFileSync(
    "./.updateScripts/vscode.template.md",
    "utf8"
);
const vscodeSettings = JSON.parse(
    fs.readFileSync("./.vscode/settings.json", "utf8")
);
const vscodeVersion = fs
    .readFileSync("./.vscode/version.txt", "utf8")
    .split("\n");
const vscodeExtensions = fs
    .readFileSync("./.vscode/extensions.txt", "utf8")
    .split("\n")
    .filter((ext) => ext !== "");

let vscodeMarkdown = vscodeTemplate;

vscodeMarkdown = vscodeMarkdown
    .replace("{version}", vscodeVersion[0])
    .replace("{chipset}", vscodeVersion[2]);

vscodeMarkdown = vscodeMarkdown
    .replace("{theme}", vscodeSettings["workbench.colorTheme"])
    .replace("{darkTheme}", vscodeSettings["workbench.preferredDarkColorTheme"])
    .replace(
        "{lightTheme}",
        vscodeSettings["workbench.preferredLightColorTheme"]
    )
    .replace("{productIconTheme}", vscodeSettings["workbench.productIconTheme"])
    .replace("{fileIconTheme}", vscodeSettings["workbench.iconTheme"])
    .replace("{font}", vscodeSettings["editor.fontFamily"]);

vscodeMarkdown = vscodeMarkdown.replace(
    "{extensions}",
    vscodeExtensions
        .map((ext) => {
            return `-   [${ext}](https://marketplace.visualstudio.com/items?itemName=${ext})`;
        })
        .join("\n")
);

console.log(vscodeMarkdown);

fs.writeFileSync("./.vscode/README.md", vscodeMarkdown, { encoding: "utf-8" });
