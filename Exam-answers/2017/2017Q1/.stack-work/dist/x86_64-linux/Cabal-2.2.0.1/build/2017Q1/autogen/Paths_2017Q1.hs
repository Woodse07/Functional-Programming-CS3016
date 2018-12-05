{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_2017Q1 (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/woodse07/code/Funtional_programming/Exam-answers/2017Q1/.stack-work/install/x86_64-linux/lts-12.14/8.4.3/bin"
libdir     = "/home/woodse07/code/Funtional_programming/Exam-answers/2017Q1/.stack-work/install/x86_64-linux/lts-12.14/8.4.3/lib/x86_64-linux-ghc-8.4.3/2017Q1-0.1.0.0-ETdJ9U9nGEp3VZGEM1lI9p-2017Q1"
dynlibdir  = "/home/woodse07/code/Funtional_programming/Exam-answers/2017Q1/.stack-work/install/x86_64-linux/lts-12.14/8.4.3/lib/x86_64-linux-ghc-8.4.3"
datadir    = "/home/woodse07/code/Funtional_programming/Exam-answers/2017Q1/.stack-work/install/x86_64-linux/lts-12.14/8.4.3/share/x86_64-linux-ghc-8.4.3/2017Q1-0.1.0.0"
libexecdir = "/home/woodse07/code/Funtional_programming/Exam-answers/2017Q1/.stack-work/install/x86_64-linux/lts-12.14/8.4.3/libexec/x86_64-linux-ghc-8.4.3/2017Q1-0.1.0.0"
sysconfdir = "/home/woodse07/code/Funtional_programming/Exam-answers/2017Q1/.stack-work/install/x86_64-linux/lts-12.14/8.4.3/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "2017Q1_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "2017Q1_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "2017Q1_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "2017Q1_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "2017Q1_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "2017Q1_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
