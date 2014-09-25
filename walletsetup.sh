#!/bin/bash      
echo "welcome to the wallet setup program!"
mkdir ~/wallet
tar -zcvf ~/wallet wallet.tar.gz;
gpg --encrypt --recipient '' wallet.tar.gz;
rm ~/walletsetup.sh
