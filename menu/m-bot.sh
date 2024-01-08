#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY�Ҷ� ���m}����������PD@  `���P>�hf�    i@ @I@����Q�=�=OD��4��yF��!�GꙔ��P� ���2  �@@2  �4444@b�� M  �  8�����  4 4   D��OL)��)�i�z�4  �S��  � �$F�F��FL�M��	��OS��oB�
i�z�4��CL��K����/�[�?�����s$�r���>��9�=5��΢�"��d�Â�+#FRDS��}^Md���T-�qn�]���np7pʏ�b< �kLE&�,_̛���5�g��񙭬��� #	Xו
��6�^�p�\���� E�z��ա/焄��}&_>����� a$X�D@�rP$�Q��DD� �� u	�D1Nz����Q&^$�+M�"$PZ�*s'bL&��M�Oj��O�?D�C���?�o�ZP��[�BIw�X����}�f&U���G�%��a��{��{�,urJD|�(IBL�]7��{��2N����4y���)�8$B���_�=�����Xj�aB���B���|K{zˋ@�r#�>{��С�K2�(R�D���u܆+Y|������R���`�?a���ȷnl���B�-ι�Z�ad����J�qz�Gw|���x��+ƫF�����L��4]�M/z��:֒u������X����
L�_)�y{�V���������o6U +m4��Qb1���$����*ʼ}�[���}��8�HH>!��@�}R���ς6��Č��L�!�EK�\�D�P$"�����^��?�r7�
i��LOZ�"N��� �ٴ�s�h1�m�1���4��o\�(�LS�έ�cZ��I�j���lU��oY@*/-!�1�����S~�J
Y�=r��>�.V�۱2��$4ƙ��"^�+����������#�a�Hk:�$���p� ��Dr�,�F�&�A߷-�K-N��+�����㷰��Nc�Cq8&9��6�s��i ?u�h2⊄�m���hs5��e�,����%�ķx��^Y���w�h�5	��m���~�!/+9�d��x2���S\�/>m@�	����	9DDDM_���4oBDƉ�k�%�����Ȩ�u^*�W�@`l00h��u�ũ`�KZr(y*0�Vx��@���� ;+ƶҟ���`��I:(���7���)Ɛ8��񌄮ʈ�a���d�H�ݥү�MrXW�_ۘ9V<���]�\��[�R��22�U`BH��rA�J��Ĭ���_�'�Up-��	@hD>d�ۗܜ�S�6.��cU_�0!3�zK5�����}���T��9/�G��rT^X��N�(�5����p�I"J�JH�+�uD��b��{�����Tt��"C�Q!�Bu�-�K-�A�� !T*!���13� �*�	��b5��.�`:b�j�=:f��A7^'z�1�\OI_��\1a��ͦ�~��9�T�cf1x�sun��V��k��6�&��!�^�z?8J.h?��9`N����"��h��/B���6��Y�6��@�q�e��y�B
�"�
��Z��?�CD|+7����@Y����z[��f�Q.�17�ET= �ۆ3b�kXqm�	� ��Knh�CD�H#�Z�`IT|D����U�����Q.�7�$lsm�"��V|̉� ��xE@A`�{G�ؐh<g�=a��|%R2G:(A��X�Et@j���l9QT�
�M��Q"KͭF�Sf��3`8I&����������$�W�r�oR��';����� ���km.��y��i�	o:�EJ(ݽ	-���+���g�ar-=�c�ߕl�U�^YyB��nHM b���lH?40m$Ɓ�$?�p���� 5bk�vV�`�E#BDy11YFр�qU���KA̪A�V"�;�Qc
��5"V���SX`��
R���m�񢺴�Yʑ�H,_��p �_g��;� (��|��q�X�<%���6`���	KXY�xVA��J���X��(Nm�`ʮޑ =�����h�7�ؒ]v`H�i���+��s4���r��9��h���!� �[� _��$�C�dn��G'� ��,�m��JK�/�C&O�az�s~��A��j��qKw��˾,��&v"e�����Ϡg(�b[�1�C[� -e��1Z&�+f�Z���hG�F�f��8�V�B]IJқ�%a���Vb5���rL(K�,G�	}�e��p��i��8�$Y!�Yu�2c����+��Ȉ��
r��0:~��j�j<�H�`���f�k�JT؛ ���o�c��(���� lИ12$�5��JaX��a�$���':�Ă«�E5P�R�d!�1������Z��(�۴�I�h�R��/P4� \���@Պv�T����r<v`hϽ#��=fԍ���(�̨T�k1� �����2�q�� .W,;9}]ZGR/۫�OYpx�Ӏ��"�I,LM�h[5�Z2sJ`i���F���ZYo#�@ذ����^�	�1.R!3������V�bK�aprB�b������ ��(�!����Q�5��P�=�����kI-D����	i��w�� ���Z̈́��z ���4+��%2�	�Tk^"	�41��H��ahHjG9�	6�"��!�S��3rS��ɜ �H7;-G$�AUW�XX]PX�����AB�i�ccIt�L�0Ab�"Z��HcD�YA
�(�,��4H��z!�)�hė�HItW�0���P��1Z��/026���@AX�������SLЕg#����\t�f�M��������<H�ݿ��	8��O&�7#��:��]'IR�[þ�����gB�~a�o�-�MM	3����ff �4ў���P8�KV���GD�S!�z��S���(DBBHR U�X���ǘL��
��%�̅hV �J� �uR)��ܑN$7���@