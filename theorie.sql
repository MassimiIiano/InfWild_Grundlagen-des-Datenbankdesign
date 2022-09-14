-- table schueler (sid, sname, kid) 
--     1 sep 1
--     2 rudi 2
--     3 evi 1

-- table klassen (kid, kname)
--     1   5IA
--     2   5IB

-- um alle schuler von der klasse 5IA
select s.name 
    from schueler s, klassen kid  
    where s.kid = k.kid and k.kname = "5IA"