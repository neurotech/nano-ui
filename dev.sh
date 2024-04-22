clear
echo "Building nano-ui and installing to WoW's Addons directory."

echo "Creating TOC file..."
touch nano-ui.toc.tmp
cat nano-ui.toc >nano-ui.toc.tmp
sed -i "s/@project-version@/$(git describe --abbrev=0)/g" nano-ui.toc.tmp

echo "Copying assets..."
mkdir -p /f/games/World\ of\ Warcraft/_retail_/Interface/AddOns/nano-ui/
cp *.lua /f/games/World\ of\ Warcraft/_retail_/Interface/AddOns/nano-ui/
cp nano-ui.toc.tmp /f/games/World\ of\ Warcraft/_retail_/Interface/AddOns/nano-ui/nano-ui.toc

echo "Cleaning up..."
rm nano-ui.toc.tmp

echo "Complete."
