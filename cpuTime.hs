import System.CPUTime

main = do
    print cpuTimePrecision
    getCPUTime >>= print
