%% detecció de passos per zero de la Laplaciana

I = double(imread('rabbit.jpg'));
imshow(I,[])
%% apliquem Laplaciana
hL = [0 1 0;1 -4 1;0 1 0];
L = imfilter(I,hL);
imshow(L,[])
% Es pot observar el Pas per Zero: zones blanques (+) i negres (-) juntes

% Millores:
% Amb una Laplaciana of Gaussian, filtrem i apliquem Laplaciana, Tot en un. 
hLoG = fspecial('log',5,1);
LoG = imfilter(I,hLoG);
imshow(LoG,[])


%% deteccio de passos per zero
 
% Es busca  que la Laplaciana passi per zero . 
% Es a dir aquells pixels en que tingui un vei sigui positiu i algun vei
% negatiu

P = LoG > 0; % pixels amb valor positiu
N = LoG < 0; % pixels amb valor negatiu


SP = colfilt(P,[3 3],"sliding",@sum); % fa la suma dels veis positius
SN = colfilt(N,[3 3],"sliding",@sum); % fa la suma dels veis negatius
% Nota: la funció colfilt ens proporciona els veins de cada pixel i després aplica la funcio que li passem com a parametre 

UP = SP > 0; % almenys un vei positiu
UN = SN > 0; % almenys un vei negatiu

Z = UP & UN;
imshow(Z);


%% Que el mòdul de la primera derivada sigui gran
% Calcul del modul de la primera derivada per Sobel
hx = [-1 0 1; -2 0 2; -1 0 1];
hy = -(hx');
Gx = imfilter(I, hx);
Gy = imfilter(I, hy);
G = abs(Gx) + abs(Gy); % modul del gradient (dx,dy)

R = Z .* G; % Enaltim els pixels de pass per zero amb el modul del gradient
imshow(R,[]);





