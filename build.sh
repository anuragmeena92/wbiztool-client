#!/bin/bash
# Build script for wbiztool-client package

# Clean previous builds
echo "Cleaning previous builds..."
rm -rf build/ dist/ *.egg-info/

# Install required build tools
echo "Installing build tools..."
pip3 install --upgrade pip
pip3 install --upgrade setuptools wheel twine

# Build the package
echo "Building the package..."
python3 setup.py sdist bdist_wheel

# Display the built packages
echo -e "\nBuilt packages:"
ls -lh dist/

echo -e "\nTo upload to TestPyPI, run:"
echo "twine upload --repository-url https://test.pypi.org/legacy/ dist/*"

echo -e "\nTo upload to PyPI, run:"
echo "twine upload dist/*"
