# Remove previous builds
# rm -rf build

# Init conda
#source ~/.zshrc
# conda activate clothseg # activate the environment you want to build the custom open3d in
echo "======================================="
which python
echo "======================================="

mkdir build
cd build
cmake ..

# # On Ubuntu
make -j$(nproc)

# # Activate the virtualenv first
# # Install pip package in the current python environment
make install-pip-package
