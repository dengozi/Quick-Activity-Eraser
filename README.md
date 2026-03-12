# 🧹 Quick System Activity Eraser

This specialized batch script is designed for rapid removal of specific file system journals and execution histories that Windows tracks in the background.

### 🛠️ Key Features
* **USN Journal Purge:** Uses `fsutil` to delete the Update Sequence Number (USN) Journal, wiping the record of all file changes on the C: drive.
* **Targeted Prefetch Cleanup:** Specifically removes `REGEDIT` related prefetch files to obscure registry editing history.
* **RunMRU Reset:** Instantly clears the history of commands typed into the "Run" (Win+R) dialog.
* **Recent Items Wipe:** Deletes shortcuts to recently accessed files and folders from the AppData directory.

### 🚀 Usage
1. Right-click the `.bat` file.
2. Select **"Run as Administrator"** (This is mandatory for `fsutil` and registry operations).
3. The script will execute in 5 automated steps.

---
*Note: This tool is intended for privacy maintenance and system optimization.*
