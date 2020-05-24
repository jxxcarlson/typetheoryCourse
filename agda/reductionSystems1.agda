module reductionSystems1 where

data ℕ : Set where
  Z : ℕ
  S : ℕ → ℕ

infixl 60 _+_
infixl 80 _*_

_+_ : ℕ → ℕ → ℕ
n + Z = n
n + S m = S(n + m)

_*_ : ℕ → ℕ → ℕ
n * Z = Z
n  * S m = (n * m) + n

add : ℕ → ℕ → ℕ
add n Z = n
add n (S m) = S(add n m)

arithp : ℕ → ℕ
arithp Z = Z
arithp (S n) = (S n) + arithp n

fact : ℕ → ℕ
fact Z = (S Z)
fact (S n) = (S n) * fact n
