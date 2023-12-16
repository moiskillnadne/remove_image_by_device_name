# The bash script was created to copy image files by device type names

The script was created for Linux and Mac OS system.

## Know How To Use


To remove photos by the device model name using a bash script, you'll need to use tools that can read the metadata (EXIF data) from the photos, such as exiftool. exiftool is a powerful command-line utility for reading, writing, and editing metadata in a wide variety of files.

Here's a basic script that you can use for this task. This script assumes that exiftool is installed on your system. If it's not installed, you can usually install it via your package manager (like apt on Ubuntu, or brew on macOS).

First, install exiftool if you haven't already:

```
# For Ubuntu/Debian
sudo apt-get install exiftool

# For MacOS
brew install exiftool
```

Then, use the script from repo.

Replace /path/to/your/photos with the path to your folder with photos, and replace iPhone Model 1, iPhone Model 2, and iPhone Model 3 with the actual model names of the iPhones.

This script will remove the photos taken by the specified iPhone models from the specified directory. It searches for files in the input directory and uses exiftool to read the metadata of each photo to check the model name. If the model name matches, the photo is deleted.

### Warning: This script will permanently delete files. It's recommended to test it on a backup or a small sample of your data first to ensure it behaves as expected.