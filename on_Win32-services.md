# On Win32-services, Cabal packages

This is a small test case to show dependencies of Win32-services, a Cabal package.

```prolog
?- suite(base, Suite).
Suite = [base-(4, 17, 0, 0)] ;
Suite = [base-(4, 16, 4, 0)] ;
Suite = [base-(4, 16, 3, 0)] ;
Suite = [base-(4, 16, 2, 0)] ;
Suite = [base-(4, 16, 1, 0)] ;
Suite = [base-(4, 16, 0, 0)] ;
Suite = [base-(4, 15, 1, 0)] ;
Suite = [base-(4, 15, 0, 0)] ;
Suite = [base-(4, 14, 3, 0)] ;
Suite = [base-(4, 14, 2, 0)] ;
Suite = [base-(4, 14, 1, 0)] ;
Suite = [base-(4, 14, 0, 0)] ;
Suite = [base-(4, 13, 0, 0)] ;
Suite = [base-(4, 12, 0, 0)] ;
Suite = [base-(4, 11, 1, 0)] ;
Suite = [base-(4, 11, 0, 0)] ;
Suite = [base-(4, 10, 1, 0)] ;
Suite = [base-(4, 10, 0, 0)] ;
Suite = [base-(4, 9, 1, 0)] ;
Suite = [base-(4, 9, 0, 0)] ;
Suite = [base-(4, 8, 2, 0)] ;
Suite = [base-(4, 8, 1, 0)] ;
Suite = [base-(4, 8, 0, 0)] ;
Suite = [base-(4, 7, 0, 2)] ;
Suite = [base-(4, 7, 0, 1)] ;
Suite = [base-(4, 7, 0, 0)] ;
Suite = [base-(4, 6, 0, 1)] ;
Suite = [base-(4, 6, 0, 0)] ;
Suite = [base-(4, 5, 1, 0)] ;
Suite = [base-(4, 5, 0, 0)] ;
Suite = [base-(4, 4, 1, 0)] ;
Suite = [base-(4, 4, 0, 0)] ;
Suite = [base-(4, 3, 1, 0)] ;
Suite = [base-(4, 3, 0, 0)] ;
Suite = [base-(4, 2, 0, 2)] ;
Suite = [base-(4, 2, 0, 1)] ;
Suite = [base-(4, 2, 0, 0)] ;
Suite = [base-(4, 1, 0, 0)] ;
Suite = [base-(4, 0, 0, 0)] ;
Suite = [base-(3, 0, 3, 2)] ;
Suite = [base-(3, 0, 3, 1)].
```

```prolog
?- suite(errors, Suite).
Suite = [base-(4, 17, 0, 0), errors-(2, 3, 0)] ;
Suite = [base-(4, 17, 0, 0), errors-(2, 2, 5)] ;
Suite = [base-(4, 17, 0, 0), errors-(2, 2, 4)] ;
Suite = [base-(4, 17, 0, 0), errors-(2, 2, 3)] ;
Suite = [base-(4, 10, 1, 0), errors-(2, 2, 2)] ;
Suite = [base-(4, 10, 1, 0), errors-(2, 2, 1)] ;
Suite = [base-(4, 10, 1, 0), errors-(2, 2, 0)] ;
false.
```

```prolog
?- suite(win32, Suite).
Suite = [base-(4, 17, 0, 0), win32-(2, 13, 4, 0)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 13, 3, 0)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 13, 2, 1)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 13, 2, 0)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 13, 1, 0)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 13, 0, 0)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 12, 0, 1)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 12, 0, 0)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 11, 1, 0)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 11, 0, 0)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 10, 1, 1)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 10, 1, 0)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 10, 0, 0)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 9, 0, 0)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 8, 5, 0)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 8, 4, 0)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 8, 3, 0)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 8, 2, 0)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 8, 1, 0)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 8, 0, 0)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 7, 0, 0)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 6, 2, 1)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 6, 2, 0)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 6, 1, 0)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 6, 0, 0)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 5, 4, 1)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 5, 4, 0)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 5, 3, 0)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 5, 2, 0)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 5, 1, 0)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 5, 0, 0)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 4, 0, 0)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 3, 1, 1)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 3, 1, 0)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 3, 0, 2)] ;
Suite = [base-(4, 17, 0, 0), win32-(2, 3, 0, 1)] ;
false.
```

```prolog
?- suite(template-haskell, Suite).
Suite = [base-(4, 17, 0, 0), template-haskell-(2, 19, 0, 0)] ;
Suite = [base-(4, 16, 4, 0), template-haskell-(2, 18, 0, 0)] ;
Suite = [base-(4, 15, 1, 0), template-haskell-(2, 17, 0, 0)] ;
Suite = [base-(4, 14, 3, 0), template-haskell-(2, 16, 0, 0)] ;
Suite = [base-(4, 13, 0, 0), template-haskell-(2, 15, 0, 0)] ;
Suite = [base-(4, 12, 0, 0), template-haskell-(2, 14, 0, 0)] ;
Suite = [base-(4, 11, 1, 0), template-haskell-(2, 13, 0, 0)] ;
Suite = [base-(4, 10, 1, 0), template-haskell-(2, 12, 0, 0)] ;
Suite = [base-(4, 9, 1, 0), template-haskell-(2, 11, 1, 0)] ;
Suite = [base-(4, 9, 1, 0), template-haskell-(2, 11, 0, 0)] ;
Suite = [base-(4, 8, 2, 0), template-haskell-(2, 10, 0, 0)] ;
Suite = [base-(4, 7, 0, 2), template-haskell-(2, 9, 0, 0)] ;
Suite = [base-(4, 6, 0, 1), template-haskell-(2, 8, 0, 0)] ;
Suite = [base-(4, 5, 1, 0), template-haskell-(2, 7, 0, 0)] ;
Suite = [base-(4, 4, 1, 0), template-haskell-(2, 6, 0, 0)] ;
Suite = [base-(4, 3, 1, 0), template-haskell-(2, 5, 0, 0)] ;
Suite = [base-(4, 2, 0, 2), template-haskell-(2, 4, 0, 1)] ;
false.
```

```prolog
?- suite(win32-errors, Suite).
Suite = [base-(4, 17, 0, 0), template-haskell-(2, 16, 0, 0), win32-errors-(0, 2, 2, 5)] ;
Suite = [base-(4, 17, 0, 0), template-haskell-(2, 14, 0, 0), win32-errors-(0, 2, 2, 4)] ;
Suite = [base-(4, 17, 0, 0), template-haskell-(2, 13, 0, 0), win32-errors-(0, 2, 2, 3)] ;
Suite = [base-(4, 8, 2, 0), template-haskell-(2, 10, 0, 0), win32-errors-(0, 2, 2, 1)] ;
Suite = [base-(4, 7, 0, 2), template-haskell-(2, 9, 0, 0), win32-errors-(0, 2, 2)] ;
Suite = [base-(4, 7, 0, 2), template-haskell-(2, 9, 0, 0), win32-errors-(0, 2, 1)] ;
Suite = [base-(4, 7, 0, 2), template-haskell-(2, 8, 0, 0), win32-errors-(0, 2, 0, 1)] ;
Suite = [base-(4, 7, 0, 2), template-haskell-(2, 8, 0, 0), win32-errors-(0, 2)] ;
Suite = [base-(4, 8, 2, 0), template-haskell-(2, 8, 0, 0), win32-errors-(0, 1)].
```

```prolog
?- suite(win32-services, Suite).
Suite = [base-(4, 8, 2, 0), win32-(2, 3, 1, 1), win32-services-(0, 2, 5, 1)] ;
Suite = [base-(4, 8, 2, 0), win32-(2, 3, 1, 1), win32-services-(0, 2, 5)] ;
Suite = [base-(4, 7, 0, 2), errors-(1, 4, 7), win32-(2, 3, 1, 1), win32-services-(0, 2, 4)] ;
Suite = [base-(4, 7, 0, 2), errors-(2, 3, 0), win32-(2, 13, 4, 0), win32-services-(0, 2, 3, 1)] ;
Suite = [base-(4, 7, 0, 2), errors-(2, 3, 0), win32-(2, 13, 4, 0), win32-services-(0, 2, 3)] ;
Suite = [base-(4, 6, 0, 1), errors-(2, 3, 0), win32-(2, 13, 4, 0), win32-services-(0, 2, 2, 1)] ;
Suite = [base-(4, 6, 0, 1), errors-(2, 3, 0), win32-(2, 13, 4, 0), win32-services-(0, 2, 2)] ;
Suite = [base-(4, 5, 1, 0), errors-(2, 3, 0), win32-(2, 13, 4, 0), win32-services-(0, 2, 1)] ;
Suite = [base-(4, 5, 1, 0), errors-(2, 3, 0), win32-(2, 13, 4, 0), win32-services-(0, 2)] ;
Suite = [base-(4, 17, 0, 0), errors-(2, 3, 0), win32-(2, 13, 4, 0), win32-services-(0, 1)].
```
