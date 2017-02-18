# wos

## Toolchain
I generally followed the instructions [here](https://cs.au.dk/~sortie/dopsys/osdev). I first started with the build chain the same as the page but ran into some compiling problems and decided to use current releases of the toolchain. What I used is:
  
<pre><code>
wget https://ftp.gnu.org/gnu/binutils/binutils-2.27.tar.bz2
wget https://ftp.gnu.org/gnu/gcc/gcc-6.3.0/gcc-6.3.0.tar.bz2
wget https://ftp.gnu.org/gnu/gmp/gmp-6.1.2.tar.bz2
wget ftp://ftp.gnu.org/gnu/mpc/mpc-1.0.3.tar.bz2
wget http://www.mpfr.org/mpfr-current/mpfr-3.1.5.tar.bz2
</code></pre>


When it comes to building gcc libraries use the following
  - make all-target-libgcc
  - make install-target-libgcc
