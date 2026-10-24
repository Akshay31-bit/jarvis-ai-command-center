# JARVIS — Iron Man × Ultron Command Center

A cinematic **blue-left / red-right** desktop-style HUD interface with a bold JARVIS center, featuring Iron Man-inspired artwork on the left and Ultron-inspired artwork on the right. Designed to open in a web browser on a MacBook and deploy as a **static website using GitHub Pages**.

![JARVIS command center preview](assets/jarvis_background.png)

> **Status:** The browser interface is a visual demo. Some controls open external websites and the clock updates with your computer time. Other readings visible in the artwork are **illustrative**, not live. The optional Python voice assistant is a separate prototype and is **not yet linked** to this interface.

## Project files

```text
JARVIS_GitHub_Ready/
├── index.html                 # GitHub Pages homepage and clickable HUD
├── assets/
│   └── jarvis_background.png  # Approved blue/red command center artwork
├── assistant/
│   ├── jarvis_voice.py        # Prototype microphone listener
│   ├── jarvis_brain.py        # Groq-backed AI with limited local fallback
│   ├── jarvis_actions.py      # Prototype macOS local actions
│   ├── jarvis_market.py       # Experimental Yahoo Finance analysis
│   ├── requirements.txt      # Python dependencies
│   ├── install.sh            # macOS/Linux installer (see setup notes)
│   └── start_mac.command     # Launch voice assistant after setup
├── docs/
│   ├── GITHUB_UPLOAD.md      # Beginner-friendly upload instructions
│   └── MAC_SETUP.md          # How to open dashboard and Python prototype
├── .gitignore                # Prevent common secret / cache uploads
└── README.md                 # This document
```

## Quick start — visual interface (no Python needed)

1. Download / clone this project.
2. Open `index.html` in Chrome or Safari.
3. Use the on-screen clickable HUD hotspots or press `/` to enter a typed command.
4. Try `open google`, `search artificial intelligence`, `open gmail`, or `time`.
5. Use your browser's full-screen shortcut for a more cinematic view.

The dashboard currently supports: a live local clock, typed web commands, quick links to YouTube/Gmail/finance, clickable areas on the illustrated command panel, and optional browser speech recognition *where supported and permitted by the browser*. Speech recognition may require a secure site (such as GitHub Pages) and microphone permission.

## Publish on GitHub Pages

1. Create a new repository (e.g. `jarvis-ai-command-center`).
2. Upload the **contents** of this project folder, preserving the `assets`, `assistant`, and `docs` directories.
3. Ensure `index.html` is at the **repository root**.
4. Go to **Settings → Pages → Build and deployment**, select **Deploy from a branch**, choose `main` and `/(root)`, and save.
5. After deployment finishes, open `https://YOUR_USERNAME.github.io/REPOSITORY_NAME/`.

See [the detailed GitHub upload tutorial](docs/GITHUB_UPLOAD.md).

## Optional Python assistant

The uploaded Python prototype lives in `assistant/`. It can run on your Mac independently; see [Mac setup instructions](docs/MAC_SETUP.md). GitHub Pages **does not run Python**, cannot automatically control your Mac, and does not integrate with the Python script out of the box.

## Security and accuracy

- **Never commit Groq API keys**, passwords, private files, `.env` files, or Python virtual environments. A `.gitignore` is included, but inspect commits before uploading.
- `jarvis_actions.py` includes a demonstration inbox briefing fallback, not a real Gmail integration.
- WhatsApp opens its website/compose flow; it doesn't guarantee messages are sent.
- Stock signals are simplified and experimental, **not financial advice**; data feeds may fail.
- The browser's displayed performance, threat data, markets, and suit status are part of the static artwork, not actual measurements.
- A backend connection and authentication would be required for real interactive stats, inbox access, and Python integration.

## Artwork and usage note

This is an unofficial fan-inspired personal project. Iron Man, Ultron, JARVIS, and related imagery/names are associated with their respective rights holders. **No official affiliation or rights to the characters are claimed**. Review relevant intellectual property policies before publishing, redistributing, or commercial use. No open-source license is granted here for the character artwork.

## Roadmap

- Replace illustrative market/status panels with real data sources and clear attribution.
- Add a secure local backend to bridge voice events to the web HUD.
- Add preferences, keyboard accessibility, responsive layouts, and a startup automation for macOS.
- Improve application detection and speech reliability.
