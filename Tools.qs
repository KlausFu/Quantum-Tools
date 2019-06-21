namespace Quantum.Tools
{
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;

    operation Set (desired: Result, q1: Qubit) : Unit {
        if (desired != M(q1)) {
            X(q1);
        }
    }

    operation RandomGenerator (initial: Result) : Int {
        mutable result = 0;
        using (qubit = Qubit()) { 
            Set(initial, qubit);
            H (qubit);
            let mesure = M (qubit);
            if (mesure == One) {
                set result = 1;
            } else {
                set result = 0;
            }
            Set(Zero, qubit);
        }
        return result;
    }
}