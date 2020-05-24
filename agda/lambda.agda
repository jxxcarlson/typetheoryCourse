postulate A : Set
postulate B : Set
postulate f : A → B
postulate a : A

b : B
b = f a

-- Two ways of introducing lambda terms:

g : A → A
g = λ x → x

g' : A → A
g' a = a


-- Prove that g = g'
-- P is a predicate on functions A → A
-- If the h : P g → P g' typechecks, then
-- g and g' agree pointwise.

postulate P : (A → A) -> Set

h : P g → P g'
h x = x

