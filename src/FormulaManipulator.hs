-- |
-- Module      : FormulaManipulator
-- Description : Manipulate formulas and expressions represented by `Expr` values
-- Copyright   : Marcell Merenyi (1425293)
--               STUDENT NAME 2 (ID)
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

foldE :: p -> (Expr t t -> Expr t t -> p) -> Expr t t -> p
foldE b g = rec
    where
        rec (Var x) = b
        rec (Const y) = b
        rec (Mult x y) = g x y
        rec (Plus x y) = g x y

printE = error "Implement, document, and test this function"

evalE = error "Implement, document, and test this function"

simplifyE = error "Implement, document, and test this function"

diffE = error "Implement, document, and test this function"
