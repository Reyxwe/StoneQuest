﻿unit unitMarchand;

interface

uses
    gestionnaire,GestionEcran;


procedure marchand(var personnage : heros); //procédure général du marchand
procedure achat(var personnage :heros);     //procédure d'achat
procedure vendre(var personnage :heros);    //procédure de vente

implementation

//**************************DEBUT MARCHANT**************************************
procedure marchand(var personnage : heros ); //procédure marchand avec variable par référence personnage



var
	choix : Integer;     //variable numérique de type entier contenant le choix de l'utilisateur
	quitter : Boolean;   //variable de type boolean contenant la sortie de la procédure


begin
	quitter := true;    //initialisation de la sortie sur vrai
  writeln('Bonjour ',personnage.nom,' que voulez vous faire?'); //Affichage d'une phrase de début
  readln;
	while quitter do  //début de boucle tant que quitter n'a pas la valeur fausse
	begin
    effacerEcran;   //effacer l'écran pour afficher un autre
    writeln('Argent : ',personnage.argent); //afficher l'argent du personnage
    writeln('Stock de bois : ',personnage.bois);  //afficher le stock de bois du personnage
    writeln('Stock de pierre: ',personnage.pierre);    //afficher le stock de pierre du personnage
    writeln('Stock de Fer: ',personnage.fer);     //afficher le stock de fer du personnage
	 	writeln('Que voulez-vous faire?');            //on demande ce que veut faire le joueur
		writeln('1 - Acheter'); //Choix 1 acheter
		writeln('2 - Vendre');  //Choix 2 Vendre
		writeln('3 - Partir');  //Choix 3 Partir
		readln(choix);
		case choix of       //en fonction du nombre
			1 : achat(personnage); //1 on lance la procédure achat
			2 : vendre(personnage); //2 on lance la procédure vendre
			3 : quitter := false;   //3 on sors de la procédure
		end;

	end;
end;
//**************************FIN MARCHANT***************************************
//**************************DEBUT ACHAT****************************************
procedure Achat(var personnage : heros );  //procédure achat avec variable par référence personnage



var
	choix : Integer;  //variable numérique de type entier contenant le choix de l'utilisateur
	quitter : Boolean;  //variable de type boolean contenant la sortie de la procédure


begin
	quitter := true; //initialisation de la sortie sur vrai
  writeln('Que voulez vous achetez');  //Affichage d'une phrase de début
  readln;
	while quitter do  //début de boucle tant que quitter n'a pas la valeur fausse
	begin
    effacerEcran; //effacer l'écran pour afficher un autre
    writeln('Argent : ',personnage.argent); //afficher l'argent du personnage
    writeln('Stock de bois : ',personnage.bois);  //afficher le stock de bois du personnage
    writeln('Stock de pierre: ',personnage.pierre); //afficher le stock de pierre du personnage
    writeln('Stock de Fer: ',personnage.fer); //afficher le stock de fer du personnage
		writeln('Que voulez-vous faire?');  //on demande ce que veut faire le joueur
		writeln('1 - Acheter une unite de bois'); //choix 1 on achete du bois
		writeln('2 - Acheter une unite de fer');  //choix 2 on achete du fer
    writeln('3 - Acheter une unite de pierre'); //choix 3 on achete de la pierre
    writeln('4 - Acheter une armure');  //choix 4 on achete une armure
    writeln('5 - Acheter une epee');   //choix 5 on achete une épée
		writeln('6 - Partir');   //Choix 6 Partir
		readln(choix);
		case choix of  //en fonction du choix:
			1 : Begin
            if personnage.argent >= 1 then  //on verifie que le joueur a assez d'argent
            begin
              personnage.bois := personnage.bois+1; //on ajoute une unité de bois au stock du personnage
              personnage.argent:= personnage.argent-1; //on soustrait une unité d'argent au stock du personnage
            end
            else
            begin
              writeln('Vous n''avez plus d''argent!!'); //sinon on affiche qu'il n'a pas assez d'argent
              readln;
            end;
           End;

      2 : Begin
            if personnage.argent >= 3 then //on verifie que le joueur a assez d'argent
            begin
              personnage.fer := personnage.fer+1; //on ajoute une unité de fer au stock du personnage
              personnage.argent:= personnage.argent-3; //on soustrait trois unité d'argent au stock du personnage
            end
            else
            begin
              writeln('Vous n''avez plus d''argent!!'); //sinon on affiche qu'il n'a pas assez d'argent
              readln;
            end;
          End;

      3 :Begin
          if personnage.argent >= 2 then //on verifie que le joueur a assez d'argent
          begin
            personnage.pierre := personnage.pierre+1; //on ajoute une unité de pierre au stock du personnage
            personnage.argent:= personnage.argent-2; //on soustrait deux unité d'argent au stock du personnage
          end
          else
          begin
            writeln('Vous n''avez plus d''argent!!'); //sinon on affiche qu'il n'a pas assez d'argent
            readln;
          end;
        End;
        4 : Begin
              if personnage.argent >= 100 then //on verifie que le joueur a assez d'argent
              begin
                if personnage.armure= 0 then  //on vérifie qu'il n'a pas déja une armure
                begin
                  personnage.armure := personnage.armure+1; //on ajoute une armure au stock du personnage
                  personnage.argent:= personnage.argent-100; //on soustrait cent unité d'argent au stock du personnage
                end
                else
                begin
                  writeln('Vous avez déja une armure!!!'); //sinon on affiche qu'il a déja une armure
                  readln;
                end
              end
              else
              begin
                writeln('Vous n''avez plus d''argent!!'); //sinon on affiche qu'il n'a pas assez d'argent
                readln;
              end;
            End;
        5 : Begin
              if personnage.argent >= 50 then //on verifie que le joueur a assez d'argent
              begin
                if personnage.arme = 0 then //on vérifie qu'il n'a pas déja une épée
                begin
                  personnage.arme := personnage.arme+1; //on ajoute une épée au stock du personnage
                  personnage.argent:= personnage.argent-50; //on soustrait cinquante unité d'argent au stock du personnage
                end
                else
                begin
                  writeln('Vous avez déja une arme!'); //sinon on affiche qu'il a déja une arme
                  readln;
                end
              end
              else
              begin
                writeln('Vous n''avez plus d''argent!!'); //sinon on affiche qu'il n'a pas assez d'argent
                readln;
              end;
            End;
        6 : quitter := false; //on quitte la procédure achat
		  end;
	end;
end;

//**************************FIN ACHAT******************************************
//**************************DEBUT VENDRE***************************************

procedure Vendre(var personnage : heros ); //procédure vendre avec variable par référence personnage



var
	choix : Integer; //variable numérique de type entier contenant le choix de l'utilisateur
	quitter : Boolean; //variable de type boolean contenant la sortie de la procédure


begin
	quitter := true;  //initialisation de la sortie sur vrai
  writeln('Que voulez vous vendre?'); //Affichage d'une phrase de début
  readln;
	while quitter do  //début de boucle tant que quitter n'a pas la valeur fausse
	begin
    effacerEcran; //effacer l'écran pour afficher un autre
    writeln('Argent : ',personnage.argent); //afficher l'argent du personnage
    writeln('Stock de bois : ',personnage.bois);  //afficher le stock de bois du personnage
    writeln('Stock de pierre: ',personnage.pierre);  //afficher le stock de pierre du personnage
    writeln('Stock de Fer: ',personnage.fer);  //afficher le stock de fer du personnage
		writeln('Que voulez-vous faire?');  //on demande ce que veut faire le joueur
		writeln('1 - Vendre une unite de bois'); //choix 1 vendre du bois
		writeln('2 - Vendre une unite de fer');  //choix 2 vendre du fer
    writeln('3 - Vendre une unite de pierre'); //choix 3 vendre de la pierre
		writeln('4 - Partir'); //choix 4 partir
		readln(choix);
		case choix of  //en fonction du choix:
      1 : Begin
            if personnage.bois >= 1 then //on vérifie que le joueur a assez de bois
            begin
              personnage.bois := personnage.bois - 1; //on soustrait une unité de bois au stock du personnage
              personnage.argent:= personnage.argent + 1; //on ajoute une unité d'argent au stock du personnage
            end
            else
            begin
              writeln('Vous n''avez pas assez de bois') ; //sinon on affiche qu'il n'a pas assez de bois
              readln;
            end;
          end;

      2 : Begin
            if personnage.fer >= 1 then //on vérifie que le joueur a assez de fer
            begin
              personnage.fer := personnage.fer-1; //on soustrait une unité de fer au stock du personnage
              personnage.argent:= personnage.argent+3;//on ajoute trois unité d'argent au stock du personnage
            end
            else
            begin
              writeln('Vous n''avez pas assez de fer') ; //sinon on affiche qu'il n'a pas assez de fer
              readln;
            end;
          end;

      3 : Begin
            if personnage.pierre >= 1 then //on vérifie que le joueur a assez de pierre
            begin
              personnage.pierre := personnage.pierre-1; //on soustrait une unité de pierre au stock du personnage
              personnage.argent:= personnage.argent+2;  //on ajoute deux unité d'argent au stock du personnage
            end
            else
            begin
              writeln('Vous n''avez pas assez de pierre') ;//sinon on affiche qu'il n'a pas assez de pierre
              readln;
            end;
          End;
      4 : quitter := false; //on quitte la procédure vendre
		end;
  end;
end;
//**************************FIN VENDRE*****************************************
end.

