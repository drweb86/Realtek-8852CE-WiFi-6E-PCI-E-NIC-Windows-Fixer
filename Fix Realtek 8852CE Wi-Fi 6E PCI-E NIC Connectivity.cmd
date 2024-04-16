@echo off


echo """""""""""""""""""""""""""""""""""""""""""""""""""
echo " __      __.__         ___________.__            "
echo "/  \    /  \__|        \_   _____/|__|           "
echo "\   \/\/   /  |  ______ |    __)  |  |           "
echo " \        /|  | /_____/ |     \   |  |           "
echo "  \__/\  / |__|         \___  /   |__|           "
echo "       \/                   \/                   "
echo " __      __                     .__              "
echo "/  \    /  \_____ ______________|__| ___________ "
echo "\   \/\/   /\__  \\_  __ \_  __ \  |/  _ \_  __ \"
echo " \        /  / __ \|  | \/|  | \/  (  <_> )  | \/"
echo "  \__/\  /  (____  /__|   |__|  |__|\____/|__|   "
echo "       \/        \/                              "
echo """""""""""""""""""""""""""""""""""""""""""""""""""

echo This script will attempt to fix missing Wi-Fi networks for Realtek 8852CE Wi-Fi 6E PCI-E NIC
pause
powershell "Set-NetAdapterAdvancedProperty -Name '*' -RegistryKeyword 'WifiProtocol_6G' -RegistryValue '0'"
powershell "Set-NetAdapterAdvancedProperty -Name '*' -RegistryKeyword 'WifiProtocol_6G' -RegistryValue '34'"
echo Boom. Done!
