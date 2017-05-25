import System.Process

main = do
    system "sudo apt-get update"

    system "ghc --version"
    system "cc --version"
    system "java -version"
    system "python --version"
