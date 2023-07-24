% 1. Genera una matriu A de 10x10 amb valors aleatoris entre 0 i 255 de tipus enter
A = randi(255,10);
% 2. Obté un vector amb la 4ª fila de A
A(4,:)
% 3. Obté un vector amb la 4ª columna de A
A(:,4)
% 4. Obté una matriu on s'hagi suprimit la 4ª columna de A
X = A;
X(:,4) = [];
% 5. Obté un vector amb el valor màxim de cada columna de A
max(A)
% 6. Obté el valor màxim de la matriu A
max(max(A))
% 7. Obté una matriu amb només les files parells de A
A(2:2:end,:)
% 8. Obté la fila i columna on es troba el valor mínim de A
m = min(min(A));
[row, col] = find(A == m);
% 9. Genera la matriu B trasposant la matriu A
B = A';
% 10. Obté el producte de les matrius A i B
A*B;
% 11. Obté el producte element a element de A i B
A.*B;
% 12. Genera una matriu booleana on cada element (i,j) valgui 1 si A(i,j) > B(i,j), i 0 en cas contrari
X = randi(255,10);
X(A > B) = 1;
X(A <= B) = 0;
% 13. Genera un vector amb tots els elements A(i,j) més grans que B(i,j)
x = A(A > B);
% 14. Genera una matriu on cada element (i,j) valgui A(i,j) si A(i,j)>B(i,j) , i 0 en cas contrari
X = A;
X(A <= B) = 0;
% Genera un únic document pdf amb les operacions demanades i el resultat obtingut a sota de cada comentari. Usa la funció PUBLISH