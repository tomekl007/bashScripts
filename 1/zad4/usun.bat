echo off

type lista.txt | find /V "%1" > usuniete.txt
echo usunieto osoby spelniajace kryterium
type lista.txt | find "%1"

