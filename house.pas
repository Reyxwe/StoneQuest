﻿unit house;

interface

uses
  gestionnaire, GestionEcran, unitCoffre;

procedure maison(var personnage : heros; var coffre : stock);

implementation

procedure maison(var personnage : heros; var coffre : stock);

var
  choix : integer;  //Variable de type numérique entier qui contient le choix du personnage
  quitter : boolean; //Variable qui prend la valeur faux pour sortir

begin

  quitter := true; //Initialisation à vrai
  while quitter do //Tant que quiest = faux alors on boucle
  begin
    effacerEcran; //Efface le texte
    statPerso(personnage); //On fait appelle au stat du personnage
    writeln('Vous etes dans votre maison'); //Texte d'introduction de la maison
    writeln('');
    writeln('Que voulez vous faire?'); //Propostion au personnage
    writeln('1 - Dormir'); //Premier choix
    writeln('2 - Ouvrir votre coffre'); //Second choix
    writeln('3 - Sortir'); //Dernier choix.
    readln(choix); //On stock le choix fait par le joueur
    case choix of //En fonction du choix
         1 :
         begin
           personnage.vie := 100; //Le joueur récupère sa vie
           writeln('Vous vous sentez mieux a present');  //texte présentant la régenerartion (like doctor)
         end;
         2 : malle(personnage, coffre);  //Appelle de la procédure coffre


         3 :
           begin
            writeln('Vous sortez de chez vous'); //Texte présentant notre départ à l'aventure
            quitter := false; //Permet de partir
           end;
    end;
  attendre(1000); //Tempo qui permet d'éviter d'appuier sur entrée
  end;


end;

end.


