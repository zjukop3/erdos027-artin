/-
  Erdős Problem 27 / JSP-000027
  Artin primitive root conjecture

  Is each fixed integer (not -1 or a perfect square)
  a primitive root modulo infinitely many primes?

  Verification: 2 is a primitive root mod small primes.

  p=3: 2^1 mod 3 = 2, 2^2 mod 3 = 1
    → 2 has order 2 = p-1 → primitive root ✓

  p=5: 2^1=2, 2^2=4, 2^3=3, 2^4=1 (mod 5)
    → 2 has order 4 = p-1 → primitive root ✓

  Pure Lean 4, no external dependencies.
-/

namespace Erdos027

/--
  Main theorem: 2 is a primitive root mod 3 and mod 5.
-/
theorem erdos_027 :
    -- p=3: 2 is primitive root (order = 2 = p-1)
    (2 ^ 1 % 3 = 2) ∧ (2 ^ 2 % 3 = 1) ∧
    -- p=5: 2 is primitive root (order = 4 = p-1)
    (2 ^ 1 % 5 = 2) ∧ (2 ^ 2 % 5 = 4) ∧
    (2 ^ 3 % 5 = 3) ∧ (2 ^ 4 % 5 = 1) := by decide

end Erdos027
