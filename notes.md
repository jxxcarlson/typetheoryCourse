# Type Theory Course Outline 

## Intro 

Roots in logic, mathematics, computer science

Type theory provides a single language and a theoretical framework for both mathematics and logic.  In the context of type theory, one can formulate structures such as the natural numbers, groups, rings, functions, etc., as well as propositions about these structures and proofs of the propositions.

The logic is a constructivist one and does not include the law of the excluded middle.

## An example: the Natural numbers

In the language of sets, one can say that the natural numbers is the set 

	**N** = { {}, {{}}, {{}, {{}}}, ... }
	
where on introduces the synonyms 0 = {}, 1 = {{}}, 2 = {{}, {{}}}, ...
In this setup statements like "0 is an element of 1" make sense, 
as do the statements "0, 1, 2, etc. are elements of **N**."  Note that the language of sets has some problems.  Define 

```
    S = { x is not element of x }
```

Then 0, 1, 2, etc are elements of S, the "set of ordinary sets," as is **N**.  But we now ask "is S ordinary".  Let's find out. If S is an element of S, then by definition it is not an element of S. So we rule out this possibility.  But if S is not an element of S, then by definition, it is in S, also a contradiction.  This is *Russell's paradox.*


Type theory offers a another way of describing mathematical objects.  As an exmple, we define the *type* **N** of natural numbers of natural numbers by the following rules:

```
    0 : N
    If a : N, then S a : N
```  

This is the way Peano defined the natural numbers, where one thinks of *S*
as the function S : **N** -> **N** that given one integer, returns the next one.  It is the "successor function."  The two rules are called *constructors,* since they tell us how to construct elements of **N**.  An expression like `a : N` is analogous to the statement "a is a member of the set **N**," but nonetheless different.  The preferred discourse is "a inhabits the type A" rather than "a is an element of the set A."  Nonetheless, we often lapse and say "element."  The difference, however, is more than terminological.  Inhabitants of a type have that status because they were constructed by certain rules.  Thus to speak of them
apart from their type makes no sense.  For this reason, while we can say 0:**N**, but we cannot say 0:**Q**, where **Q** is the type of rational numbers.  What we can do, of course, is to define a function f : **N* -> **Q** such that if k : **N**, then f(k) : **Q** is the corresponding rational number. 

One can proceed to endow the natural numbers as a type with its familiar 
operations and laws.  For example, one can define addition by the rules 

```
    m + 0 = m
    m + S n = S (m + n)
```
and 
```
    m * 0 = 0
    m * S n = (m * n) + S m
```

Missing of course, are the laws, e.g, the commutative and associative laws.  For now, we fill one obvious gap.  Part of the definition tells us that 0 is a right identity for addition: m + 0 = m.  To prove that it is also a right identity, we observe that 

```
    0 + 0 = 0
```

and further that 

```
   0 + S n = S(0 + n)   -- definition of addition
           = S(n + 0)   -- inductive hypothesis 
           = S n        -- 0 is a right identity 
```
Now we have both `0 + 0 = 0` and `0 + S n = S n`.  This constitutes
an inductive proof of the sought-after proposition.  Well, almost.
We must add one more rule to the rules defining **N** as a type in order
to justify inductive definitions of functions and also inductive proofs.

## Propositions as types



                                 