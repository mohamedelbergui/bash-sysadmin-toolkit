# 🛠️ Bash Sysadmin Toolkit

A collection of Bash scripts for automating common Linux system administration tasks.
Built as part of a DevOps learning path.

---

## 📁 Structure

bash-sysadmin-toolkit/
├── backup/
│   ├── backup.sh        # Creates compressed, timestamped backups
│   └── cleanup.sh       # Removes backups older than 1 days (via cron)
└── README.md

---

## 🔧 Scripts

### `backup/backup.sh`
Creates a compressed `.tar.gz` backup of a given directory,
timestamped and stored in `~/backup/`.

**Usage:**
```bash
./backup.sh <source_path>
```

**Example:**
```bash
./backup.sh ~/projects
# Output: Backup created: ~/backup/backup_2026-05-29_14-30.tar.gz
```

---

### `backup/cleanup.sh`
Deletes backups older than a defined number of days.
Designed to run automatically via a cron job.

**Recommended cron setup:**
```bash
# Run every day at 2:00 AM
0 2 * * * /path/to/cleanup.sh
```

---

## 🚀 Getting Started

```bash
git clone https://github.com/mohamedelbergui/bash-sysadmin-toolkit.git
cd bash-sysadmin-toolkit
chmod +x backup/backup.sh
./backup/backup.sh <source_path>
```

---

## 📌 Requirements

- Linux / macOS
- Bash 4.0+
- `tar`, `find` (standard on most systems)
