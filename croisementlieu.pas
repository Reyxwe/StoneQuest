﻿unit croisementLieu; //unité permmettant le croisement entre les différents chemins

interface

uses
    uniteMine,gestionnaire,GestionEcran, house, Unitforet;

procedure croisement (var personnage :heros ); //procédure permettant de faire correspondre les différents lieux



implementation



procedure croisement(var personnage : heros ); //procédure permettant de faire correspondre les différents lieux

var
	choix : Integer; //correspond aux choix fait par le personnage
        arret : boolean;//permet d''arrêter la boucle des chemins

begin
  arret := true;
  while arret do
  begin
    effacerEcran;
    writeln('Plusieurs directions s''offre a vous. Quel chemin voulez-vous suivre?');//On affiche les différents chemin pouvant être pris par le joueur.
    writeln('1 - Partir en direction de la maison');
    writeln('2 - Se diriger vers la foret ');
    writeln('3 - Se rendre a l''interieur de la mine');
    readln(choix);
    case choix of
				1: maison( personnage, coffre); //le joueur se retrouve dans la maison
				2: foret(personnage); //le joueur se rend dans la forêt
				3: mine(personnage);  // le joueur est envoyé dans la mine
    end;
    if personnage.mort then  //alternative permettant de remonter toutes les procédures jusqu'à l'écran titre si le personnage meurt
    begin
      arret := false;
    end;
  end;


end;


end.

