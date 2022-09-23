{-|
Module      : FormulatorCLI
Description : The command-line interface for the formulator program
Copyright   : Marcell Merenyi (1425293)
              Nathan Overschie (1454218)

The command-line interface for the formulator program. Parses and processes
command-line arguments. Manipulates expressions according to the specification
in terms of command-line arguments.
-}
module FormulatorCLI
  ( processCLIArgs
  )
where
import           Data.Either
import           Data.List.Split
import           ExprLanguage                   ( Expr
                                                , parseExpr
                                                , ParseError
                                                )
import           FormulaManipulator             ( printE
                                                , evalE
                                                , simplifyE
                                                , diffE
                                                )

processCLIArgs as = "Implement, document, and test this function"
