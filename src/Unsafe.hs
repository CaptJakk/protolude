{-# LANGUAGE Unsafe #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Unsafe (
  unsafeHead,
  unsafeTail,
  unsafeInit,
  unsafeLast,
  unsafeFromJust,
  unsafeIndex,
  unsafeThrow,
) where

import Protolude.Base (Int)
import qualified Data.Either as Either
import qualified Data.List as List
import qualified Data.Maybe as Maybe
import qualified Control.Exception as Exc

unsafeHead :: [a] -> a
unsafeHead = List.head

unsafeTail :: [a] -> [a]
unsafeTail = List.tail

unsafeInit :: [a] -> [a]
unsafeInit = List.init

unsafeLast :: [a] -> a
unsafeLast = List.last

unsafeFromJust :: Maybe.Maybe a -> a
unsafeFromJust = Maybe.fromJust

unsafeFromRight :: Either.Either e a -> a
unsafeFromRight (Right a) = a

unsafeIndex :: [a] -> Int -> a
unsafeIndex = (List.!!)

unsafeThrow :: Exc.Exception e => e -> a
unsafeThrow = Exc.throw
