import System.Arch
import System.Endian

main = do
    print $ getSystemArch
    print $ getSystemEndianness
    print $ toBE32 0xFF000000
