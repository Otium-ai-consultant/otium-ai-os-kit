---
title: Install First
type: guide
tags: [onboarding, setup]
---

# Install first: two things, about 10 minutes

> You install **two** things by hand. After that you open this folder and your AI does the rest
> inside the chat. You click **Allow** when it asks. Delivered by Otium AI Consultant.

## Before you start: you need a paid Claude plan

**Claude Code requires a Pro, Max, Team, or Enterprise subscription.** A free Claude account
cannot run it at all, and the Gmail, Calendar, and Drive connections in step 3 need a paid plan
too. Subscribe at claude.ai before going further, otherwise step 1 will not work.

## 1. Claude Code, the app your AI lives in

**Easiest, no terminal: the desktop app.**
Go to **claude.com/download**, download for **Mac** or **Windows**, and install it like any other
app. Sign in with your Claude account.

**Or the one-line installer**, if you are comfortable with a terminal:
- **Mac:** open the **Terminal** app and paste `curl -fsSL https://claude.ai/install.sh | bash`
- **Windows:** open **PowerShell** and paste `irm https://claude.ai/install.ps1 | iex`

### Windows only: also install Git for Windows

Download it from **git-scm.com/download/win** and accept every default. It takes two minutes.

Claude Code uses it to run setup commands on Windows. Without it, some steps in the next section
fail with confusing errors, and you may see a red warning at the start of every session. Mac
users can skip this. Git is already there.

## 2. Get this folder onto your computer

**Easiest: download the ZIP.**
On the repo page, click the green **Code** button, then **Download ZIP**. Unzip it, and drag the
folder somewhere you will find it again, such as **Documents**. Give it a name you recognize.

**Or clone it**, if you already use Git or VS Code:
```
git clone https://github.com/Otium-ai-consultant/otium-ai-os-kit.git
```

## 3. Node.js, a helper the plugins need

**Let your AI do it.** Skip ahead to section 4, open the folder, and say **"install node for
me"**. Come back here only if that fails.

**Or do it yourself**, which is the more reliable path:
Go to **nodejs.org**, click the green **LTS** button, open the downloaded file, and click through
**Next, Next, Finish**. This is the recommended way on both Mac and Windows, because it installs
Node where the desktop app can actually find it.

*(This folder also ships `setup.sh` and `setup.ps1`. They are a convenience, not the primary
route. If a version manager is already how you handle Node, note that the Claude desktop app is
launched from your dock or Start menu and does not read your terminal profile, so Node installed
that way stays invisible to it.)*

That is the technical part done.

## 4. Open your AI OS and say hi

1. Open the folder in **Claude Code**. In the desktop app that is **Open folder**. In a terminal,
   `cd` into it and run `claude`.
2. Claude will ask whether you **trust** this folder. Click **Yes**. It is your own folder, and
   the setup will not run otherwise.
3. Type anything, even **"hi"**.

Your AI takes over: it installs its own plugins, walks you through connecting Google in your
browser, and sets up the rest. When it asks permission for something, click **Allow**. It will
ask several times in a row during setup. That is normal.

> The hard part is over. Everything past this point happens inside the chat.
> Stuck on steps 1 to 3? Reply to Otium and we will do them with you on a quick screen share.

## Connected
- [[README]]
- [[CLAUDE]]
- [[SETUP-PLAYBOOK]]
- [[COMMANDS]]
