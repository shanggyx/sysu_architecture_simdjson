## 中山大学 2024 级计算机体系结构课程大作业

## Prerequisites

1. CPUs：64-bit ALU instructions, 256-bit SIMD instruction set (avx and avx2), and the carry-less multiplication instruction (pclmulqdq)
2. Operating System：Linux (Intel Chips only)
3. Node.JS $\geq$ v14.21.3
4. NPM：6.14.18 (或和 Node.JS 相对应的版本，可以在[这里](https://blog.51cto.com/u_15749216/6203698)查看)
5. Python $\geq$ 3.7
6. g++ $\geq$ 7.4.0

## QuickStart

1. 克隆项目 `git clone https://github.com/shanggyx/sysu_architecture_simdjson.git`。
2. 进入 simdjson: `cd simdjson`。
3. 编译指令。
4. 执行 `npm i`。
5. 执行 `npm run benchmark`。

## 可能遇到的问题

1. 可以通过 `grep -o 'pclmulqdq' /proc/cpuinfo` 来查找是否有 carry-less multiplication instruction (pclmulqdq)
2. 可以通过 `grep -o -w 'avx\|avx2' /proc/cpuinfo` 来查找是否有 256-256-bit SIMD instruction set
3. 如果 `npm i` 卡住不动或者觉得很慢可以做下面的操作：

    - 清缓存：`npm cache clean -f`
    - 查看 NPM 的源：`npm config get registry`
    - 如果是 npmjs.com 可以试着换成 npmmirror.com，即执行命令 `npm config set registry=https://registry.npmmirror.com`

4. 可能需要加一点编译选项：
   - `export CXXFLAGS="-O3 -mavx2 -mpclmul -mbmi -mbmi2 -mlzcnt"`
   - `export CFLAGS="-O3 -mavx2 -mpclmul -mbmi -mbmi2 -mlzcnt"`
   - `npm config set CXXFLAGS "-O3 -mavx2 -mpclmul -mbmi -mbmi2 -mlzcnt"`
   - `npm config set CFLAGS "-O3 -mavx2 -mpclmul -mbmi -mbmi2 -mlzcnt"`

5. 现在 GitHub 不支持用户密码的方式 `git push` 了，可以换成 `ssh`，配置过程如下：

     - 在本地执行 `ssh-keygen -t rsa -b 4096 -C <yourEmail>@<xxx>.com`
     - 在本地执行 `git remote set-url origin git@github.com:<githubUsername>/<projectName>.git`
     - 在本地执行 `cat ~/.ssh/id_rsa.pub` 后将密钥复制到 Github
     - 最后配置邮箱和用户名：
   
         - 在本地执行 `git config --global user.email "<yourEmail>@<xxx>.com"`
         - 在本地执行 `git config --global user.name "<githubUsername>"`
