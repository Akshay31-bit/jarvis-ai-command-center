# Upload Your JARVIS Project to GitHub — Full Beginner Guide

You do **not** need Terminal for the first upload. Use GitHub's website on your MacBook.

## Part A — Unzip the project

1. Download `JARVIS_GitHub_Ready.zip`.
2. Open **Finder → Downloads**.
3. Double-click the ZIP file to extract it.
4. Open `JARVIS_GitHub_Ready`. You should see `index.html`, `README.md`, `assets`, `assistant`, and `docs`.
5. **Don't upload the ZIP alone**. GitHub Pages requires the extracted `index.html` and `assets` folder.

## Part B — Create a repository

1. Open https://github.com and sign in (or create an account).
2. Visit https://github.com/new.
3. Enter repository name: `jarvis-ai-command-center` (or your preferred name).
4. Add description: `Futuristic blue/red JARVIS, Iron Man and Ultron-inspired web HUD`.
5. Choose **Public** if you want GitHub Pages on a free account and are comfortable publishing the artwork and code. Otherwise select Private and check your account's Pages entitlement.
6. For the easiest upload, leave **Add a README**, **.gitignore**, and **license** unchecked—our package includes the first two.
7. Click **Create repository**.

## Part C — Upload files (browser method)

1. On the new empty repo page select **uploading an existing file**, or select **Add file → Upload files**.
2. In Finder open your extracted `JARVIS_GitHub_Ready` folder.
3. Drag the **contents of the folder** into GitHub's upload area—not the outer project folder or ZIP. Keep the `assets`, `assistant`, and `docs` folders intact.
4. Confirm the upload list includes `index.html`, `assets/jarvis_background.png`, and `README.md`. Hidden `.gitignore` may need to be shown in Finder using `Command + Shift + .`; it is optional for the browser-hosted demo but recommended for future commits.
5. Enter commit message: `Initial JARVIS command center`.
6. Click **Commit changes** (or follow the prompted commit flow).
7. Return to the repository Code tab and verify the paths.

**If dragging a folder isn't supported by your browser**, upload each top-level file and create subfolders through GitHub's file editor or use GitHub Desktop, described below. Do not flatten `assets/` into the root unless you also edit image paths in `index.html`.

## Part D — Publish your page

1. Open your repository.
2. Select **Settings**.
3. Select **Pages** from the sidebar.
4. Under **Build and deployment**, choose **Deploy from a branch**.
5. Branch: `main`; folder: `/(root)`.
6. Click **Save**.
7. Visit the Pages panel again to find the deployed website URL. It generally looks like:
   `https://YOUR_USERNAME.github.io/jarvis-ai-command-center/`
8. Open that URL. Your background should load along with the clock and clickable UI.

Publishing can take some time; check GitHub Pages settings/build status if the link initially returns 404.

## Part E — Update your repository later

1. Edit the project files on your Mac.
2. Open your repository → **Add file → Upload files** and upload changed files with the **same relative paths**.
3. Commit the changes with a descriptive message.
4. Wait for GitHub Pages to rebuild, then refresh your page.

For frequent updates, consider **GitHub Desktop**: https://desktop.github.com/ . It provides visual commit and push controls without typing Git commands.

## Optional Terminal method (for later)

Open Terminal inside your extracted project folder. If you created an empty repository on GitHub, use:

```bash
git init
git add .
git commit -m "Initial JARVIS command center"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/jarvis-ai-command-center.git
git push -u origin main
```

Replace `YOUR_USERNAME` with your GitHub username. GitHub will require authentication; use GitHub's supported browser/credential flow rather than entering your account password as a Git password. Run these commands **only inside this project folder** and only if the repository wasn't already cloned or initialized.

## Troubleshooting

**Blank page / missing image**: confirm `assets/jarvis_background.png` exists with that exact capitalization and `index.html` sits at repo root.

**GitHub Pages 404**: check that repository is public or otherwise Pages-eligible, branch is `main`, root is selected, and deployment finished.

**Buttons don't control your Mac**: this is expected. GitHub Pages serves the front-end only, not a local desktop control service.

**Microphone button doesn't work**: browser voice recognition depends on browser features, secure context, and mic permissions. Use `/` for typed commands.

**Secret committed accidentally**: revoke and regenerate the key immediately. Removing it from the latest commit doesn't erase all historical copies.
