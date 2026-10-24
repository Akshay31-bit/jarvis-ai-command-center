# MacBook Setup — Visual HUD and Optional Voice Assistant

## A. Run the cinematic interface (recommended first)

1. Extract the ZIP project.
2. In Finder open `JARVIS_GitHub_Ready`.
3. Double-click `index.html`, or right-click → Open With → Chrome or Safari.
4. The static image, clickable hotspots, and local clock should appear.
5. Press `/` and type `search space exploration`, then Enter.
6. To go full screen, use your browser's View menu → Enter Full Screen (often `Control + Command + F`). The dashboard also tries to support `F` for fullscreen where permitted.

The visuals are not a live 3D model and the performance/threat/market panels depicted in the image are illustrative. Browser speech recognition may be unavailable when opening an HTML file locally.

## B. Optional: Run the original Python Jarvis voice prototype

These are separate programs. The Python prototype is **not connected to the webpage**.

1. Install Python 3.11 or 3.12 from https://www.python.org/downloads/ .
2. Open Terminal.
3. Type `cd ` (with a trailing space), **drag the `assistant` folder from Finder into Terminal**, then press Enter. This avoids guessing the folder path.
4. Type `python3 --version`. Make sure Python 3.10+ is available.
5. Run one line at a time:

```bash
python3 -m venv .venv
source .venv/bin/activate
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
python -m pip install pyaudio
```

6. Get a Groq API key from https://console.groq.com/keys, noting that availability and quotas may change.
7. **Do not put the key in your GitHub project.** Save it outside the repository:

```bash
python -c 'import getpass,pathlib; p=pathlib.Path.home()/".openjarvis"/"free.key"; p.parent.mkdir(exist_ok=True); p.write_text(getpass.getpass("Groq key: ").strip()); p.chmod(0o600); print("Key saved outside repository")'
```

8. Start the voice assistant:

```bash
python jarvis_voice.py
```

9. Grant microphone permissions if macOS requests them. Try `Jarvis, what time is it?` or `Jarvis, open Google`. Press `Control + C` in Terminal to stop the program.

## C. Next time you use Jarvis

Open Terminal, navigate to the `assistant` folder, then run:

```bash
source .venv/bin/activate
python jarvis_voice.py
```

You can also right-click `start_mac.command` and choose **Open**, if macOS permits it; it expects the `.venv` to be installed already.

## D. Fix common problems

- `No module named speech_recognition`: activate `.venv`, then `python -m pip install -r requirements.txt`.
- Microphone/PyAudio issues: try `python -m pip install pyaudio`, and check **System Settings → Privacy & Security → Microphone**.
- No sound: test `say "Hello from Jarvis"` on macOS, and verify volume.
- Cloud answers unavailable: verify the Groq key and current supported model names. Local fallback can only handle a limited set of built-in commands.
- Voice mode doesn't behave like a fully offline LLM: the prototype uses online speech recognition, and cloud AI requires Internet.
- `get_mail_brief()` can return sample inbox content; it does **not** authenticate to Gmail.
- Browser dashboard still doesn't show live events: connecting it to Python requires an additional local API server or other bridge.
