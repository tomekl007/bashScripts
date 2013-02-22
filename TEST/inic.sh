cat imN | cut -f1 -d" " | cut -c1 > 1in;
cat imN | cut -f2 -d" " | cut -c1 > 2in;

paste -d" " 1in 2in > final;
cat final;
