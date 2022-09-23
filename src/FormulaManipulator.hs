{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Used otherwise as a pattern" #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}
{-# OPTIONS_GHC -Wno-unused-matches #-}
-- |
-- Module      : FormulaManipulator
-- Description : Manipulate formulas and expressions represented by `Expr` values
-- Copyright   : Marcell Merenyi (1425293)
--               Nathan Overschie (1454218)
--
-- `FormulaManipulator` offers functions to manipulate, evaluate, and print
-- formulas and expressions represented by `Expr` values.
module FormulaManipulator
    (   foldE,
        printE,
        evalE,
        simplifyE,
        diffE,
    )
where

import ExprLanguage (Expr (Const, Mult, Plus, Var))


foldE :: (t1 -> t2) -> (t3 -> t2) -> (t2 -> t2 -> t2) -> (t2 -> t2 -> t2) -> Expr t1 t3 -> t2
foldE bv bc gm gp = rec
    where
        rec (Var x) = bv x
        rec (Const x) = bc x
        rec (Mult a b) = gm (rec a) (rec b)
        rec (Plus a b) = gp (rec a) (rec b)

printE :: Expr String Integer -> String
printE = foldE id show (\a b -> a ++ " * " ++ b) (\a b -> "(" ++ a ++ " + " ++ b ++ ")")

evalE = error "Implement, document, and test this function"

simplifyE = error "Implement, document, and test this function"

diffE = error "Implement, document, and test this function"
