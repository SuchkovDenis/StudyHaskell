# Study Haskell

https://www.youtube.com/watch?v=vn1IOxVplKQ&list=PLHRF-X-NtQR4MZBvm05NshPIEI8ELID5m

## Установка Haskell на Mac OS

```
curl -sSL https://get.haskellstack.org/ | sh
```

## Prelude

Запустить Prelude:

```
stack ghci
```

Выйти:

```
:quit
```

## Сгенерировать новый проект

```
stack new TestHaskell
```

## Работа с проектом

Удобным редактором для Haskell является VS Code и расширение `Haskell` для него.

Чтобы собрать проект нужно из папки проекта выполнить `stack build`, чтобы запустить `stack run`.

## Работа в режиме командной строки со своим модулем

```
stack ghci src/Lib.hs
```

## Определение локальных переменных или локальных функций

```
poly x = let
    y = x + 1
    in y * y
```

или

```
sumEvenOdds xs = sum (incr (evens xs))
    where
        incr xs = map (+1) xs
        evens xs = filter even xs
```