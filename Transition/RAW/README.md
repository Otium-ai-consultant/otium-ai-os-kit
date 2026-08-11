# Transition/RAW: staging for web clips and long articles

Drop long-form raw material here: an article saved with the Obsidian Web Clipper, a pasted
transcript, a thread, a PDF's text. Then say **"process this clip"** and the `raw-ingest` skill
takes over.

What it does with each file:

1. Reads it and pulls out the signal, never the whole thing
2. Writes a clean, short page into `wiki/pages/` with the source URL kept
3. Links and tags it so it joins your Obsidian graph
4. Moves the original into `wiki/raw/`, where it stays untouched forever
5. Leaves this folder empty again

Short thoughts and single facts do not belong here. Just say them in chat and `capture` files
them.
