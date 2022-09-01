## Variables
vIni='master';
vFin='java';
#ficheroProfile='pom.xml'
ficheroProfile='index.html'
repos_path='';
diff_path='src/';
host_path='';
nomFicheroDiff='';

##funciones
function checkProfiles(){
varGrep=$(grep -ri $nomAlmacen $ficheroProfile);
echo $varGrep
}

## Preguntas
echo "#### NIVELAR A MASTER ####"
echo
echo -n "modulo: "
read NomModulo
cd $repos_path/$NomModulo
echo -n "almacen: "
read nomAlmacen
echo

##Saltos + perfiles
echo "Preparando salto"
echo "Salto a $vIni"
sleep 1
echo
git checkout $vIni
git pull
echo Buscando $nomAlmacen en el $ficheroProfile
checkProfiles
echo
echo "Salto a $vFin"
sleep 1
git checkout $vFin
git pull
echo Buscando $nomAlmacen en el $ficheroProfile
checkProfiles
echo
echo "salto terminado y perfiles sacados"
echo
sleep 5
clear
