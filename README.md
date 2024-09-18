# 📂 Dirhunt

**A powerful tool to efficiently scan directories of a specified URL. This script allows you to identify directories and files by sending HTTP requests and checking responses.**

## 🔧 Features

- **🕒 Concurrent Scanning:** Uses multiple threads to quickly scan directories.
- **🔄 Customizable Paths:** Supports both default and custom path lists for scanning.
- **📝 Logging:** Records scan results and errors to a specified file.
- **🔴 Live Mode:** Displays discovered URLs in real-time.
- **🎨 Colored Output:** Provides color-coded output for better readability.

## 📋 Prerequisites

- Python 3.x
- Required libraries: `requests`, `tqdm`, `colorama`

You can install the required libraries using pip:

```bash
pip install -r requirements.txt
```

## 🚀 Usage

### Basic Usage

To start a directory scan, run the script with the base URL:

```bash
python dirhunt.py http://example.com
```

### Options

- `-p`, `--paths` : Specify the path to a custom file containing a list of paths to test. Each path should be on a new line.

  ```bash
  python dirhunt.py http://example.com -p custom_paths.txt
  ```

- `-t`, `--threads` : Set the number of threads to use for scanning. Default is `10`.

  ```bash
  python dirhunt.py http://example.com -t 20
  ```

- `-m`, `--mode` : Choose the scan mode. Options: `default` (use the built-in path list) or `custom` (use a custom path list).

  ```bash
  python dirhunt.py http://example.com -m custom -p custom_paths.txt
  ```

- `--clear` : Clear the screen before displaying the scan results.

  ```bash
  python dirhunt.py http://example.com --clear
  ```

- `--user-agent` : Specify a custom `User-Agent` header for requests.

  ```bash
  python dirhunt.py http://example.com --user-agent "CustomAgent/1.0"
  ```

- `--retries` : Set the number of retry attempts for failed requests. Default is `3`.

  ```bash
  python dirhunt.py http://example.com --retries 5
  ```

- `--logfile` : Specify a file to log the scan results. Default is `scan.log`.

  ```bash
  python dirhunt.py http://example.com --logfile myscan.log
  ```

- `--live` : Enable live mode to display valid URLs as they are found.

  ```bash
  python dirhunt.py http://example.com --live
  ```

## 💡 Example

To perform a scan on `http://example.com` using a custom path list with 20 threads, log results to `results.log`, and display results in real-time, you can use:

```bash
python dirhunt.py http://example.com -p custom_paths.txt -t 20 --logfile results.log --live
```

## 👤 Author

**[Lunar](https://github.com/Luunarr/dirhunt)**, **[dirhunt](https://github.com/Luunarr/dirhunt)**

## 📜 License

**This script is licensed under the [MIT License](LICENSE).**

## 🎀 SecLists

**[SecLists](https://github.com/danielmiessler/SecLists)**
