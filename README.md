# wos
Using a couple of tutorial sites for getting a learning kernel going, this is what worked for me.

## Creating a Cross-Compiler Toolchain
I generally followed the instructions . I first started with the build chain the same as the page but ran into some compiling problems and decided to use current releases of the toolchain. What I used is:
  
<pre><code>
mkdir -p $HOME/src
cd $HOME/src

wget https://ftp.gnu.org/gnu/binutils/binutils-2.27.tar.bz2
wget https://ftp.gnu.org/gnu/gcc/gcc-6.3.0/gcc-6.3.0.tar.bz2
wget https://ftp.gnu.org/gnu/gmp/gmp-6.1.2.tar.bz2
wget ftp://ftp.gnu.org/gnu/mpc/mpc-1.0.3.tar.bz2
wget http://www.mpfr.org/mpfr-current/mpfr-3.1.5.tar.bz2

tar xvf binutils-2.27.tar.bz2
tar xvf gcc-6.3.0.tar.bz2 
tar xvf gmp-6.1.2.tar.bz2
tar xvf mpc-1.0.3.tar.bz2
tar xvf mpfr-3.1.5.tar.bz2

cd gcc-6.3.0
ln -s ../gmp-6.1.2 gmp
ln -s ../mpc-1.0.3 mpc
ln -s ../mpfr-3.1.5 mpfr
cd ..

export PATH="$HOME/opt/cross/bin:$PATH"

rm -rfv binutils-build
mkdir binutils-build
cd binutils-build

../binutils-2.27/configure --prefix=$HOME/opt/cross --target=i586-elf --disable-nls

nice make -j4
nice make install

cd ..

rm -rfv gcc-build
mkdir gcc-build
cd gcc-build

../gcc-6.3.0/configure --prefix=$HOME/opt/cross --target=i586-elf --enable-languages=c,c++ --disable-nls --without-headers

nice make all-gcc -j4
nice make install-gcc
nice make all-target-libgcc -j4
nice make install-target-libgcc

cd $HOME/wos

</code></pre>


## References
<pre>
[osdev barebones](http://wiki.osdev.org/Bare_Bones)
[dopsys osdev](https://cs.au.dk/~sortie/dopsys/osdev)
[brokenthorn](http://www.brokenthorn.com/Resources/OSDevIndex.html)
