VERSION=`awk '/version = "[0-9]\.[0-9]\.[0-9]"/' Cargo.toml | awk -F\" '{print $2}'`

# GNU/Linux
cargo build --release
strip target/release/zman
mv target/release/zman target/release/zman-$VERSION

# Windows PC
cargo build --release --target=x86_64-pc-windows-gnu
mv target/x86_64-pc-windows-gnu/release/zman.exe target/x86_64-pc-windows-gnu/release/zman-$VERSION.exe
