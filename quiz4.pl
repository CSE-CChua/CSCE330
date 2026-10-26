person(chris).
person(sandy).
person(pat).

solution(Doctor, Lawyer, Engineer, Piano, Flute, Violin) :- 
    person(Doctor), 
    person(Lawyer), 
    person(Engineer),
    person(Piano), 
    person(Flute), 
    person(Violin),
    \+ Doctor = Lawyer,
    \+ Doctor = Engineer,
    \+ Lawyer = Engineer,
    \+ Piano = Flute,
    \+ Piano = Violin,
    \+ Flute = Violin,
    \+ pat = Lawyer,
    \+chris = Doctor,
    Lawyer = Piano,
    \+ chris = Engineer,
    Doctor = Violin,
    \+ sandy = Piano.
  