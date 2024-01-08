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
BZh91AY&SY�� ���������������`���P  B��`z>i��ET�6�T(M-URY�HL�"M��     h�   h   8  �  � � �  �     h�   h   jR2S@� 4h   �  h  @R LA0Ѧ�1O���H��z@�Sɨ���hd
�!#L����M FSH�)�${JzM=C�G��4zM��mOP�@��T:�$���R�Z�t~H[����b�>��]h��R��`�2��Q-
�Ԗ�kZ֬�b\��1��F'��UQUUY,���<iņ��ԥœB`Q����o�}Zxc�2�rў[�ӯ�O����_ �u*�Q�aB,�)�T_���,�4,�<K�M�e+��U�A\�UlSd"�B
�"�ࠖ 9�%�o\�KĒ� {��~0�2Iz	�a~���s�q#3��pb�z��hpb_xw�-����2iٯپ��UJ���xZ�J3S��ɒ�`͋�ɒ���pM�|����1��=u2[����e׻��݆]!�O0i�$Y(r��T����3���j#a�j�-�q�6�m��I9��o5F��.��`2K�g�1T#EP�BY�p	�����4�������f?�V�G"w���.������9z'Ԗ+�6�@M��0�{>b=l��b~Z:D>A��|��`O�~�2�tD��>j6�e" ��ٻ�w@/�����	�q�)Xvî�z���.4���ߧ������_G��n	�g�&��@cP%9�D�)JSY�_ �p�,zm:�=w���W���~i��ƱН`nF1��:Ola�!� 7U�!O6+١��n�Rh�ή�4��]���wd�`���{��i��t���ぅ�K��*E��	���h�p�  ��)�"��iI,�����DL�������, (B0��M`	$/<�X�YT20���`RIBJ@��FN�
�o��*�͖Ws3&`"0s�&n��!B�,q�n�U*�K�b��yxH�$٦�]�l䨞�-G�/9�0v.5Q�����Rwj%��O�{�lI�F!֨�ï���qf
��	�J����N�M�gmV�"S���|&�����蝇i�'�b;���?nd`QA�x�"E�"`��!G;�}	�'���O���
�ˏ�݂�KvE#�}²�0q���Y�`���F��_� q�54"HV�q�z�mM��
P�BTJ8i�ƙ��.��H�9�MONx�F3��)E(��r�dRR7��a��x�����?^OC��U?������O�p�g����z����� �ꨈ(e"h��d�q���R�m��ѧ�[4�Փ#t:�C������/1FGϠ��- �Nܼ�|�=����(��S�������K'�L�q'֔�ԕ*�X�^��|c��XӮ��k����O]�)᷿�tA{����%>���'D��3�@���+:d�Z�2��pd�f��)c�QZ��nF��"FD��P�"8���3��)LDDDH	J�d=�1uבR�\h�����=��=8+ҢK.o�A?fE$�)��y`�e�����0���:���5ӷyk40X���:͒��Q_k껬
龴��M${S�)*�˒�x���㳈u�B2�*��±I�7���d�.�jk�zp%(5�!����@Ӏ�~<��![Y)�o�@kZ6R,,@���:*^\�����fKhծ|Wظ��ĭCݥ��V��G��|س˹/N���i���kk��M�*ֺ�`O~A�w{J���b+�Tdd��גJw[6暸$��|,+�z̐U�@d�z|�֗�AA0H�aC�/|�%���"�K�(-��T��a��2>9=��	��p������<��~Sу���o-������Ml�ل��H?�K�%�GT͸�Q�ď�E$�	$r]|��^��e,�!�K�D�c�C�I�>��M03���;Ns�,!�����<Y�� ֹ�8o�;�Fb�5�R&��ړ�����p�i��Už��#F-興���3M�AO4��]�#U�,���s��5!�&��I	���v�c�V��fDE-�ٮMe&��Ʉ<�䜝S��xz(bW36�9m��'ٻ���>�p�q
���Ba*���+�i�� 4��p���� �ѥZ
�AUUy5J�5�[�����m�;g-ҲV�%��e����&���3�,�����ש$��0<����t�u�iʘnI/b��Qg3Ɉ��i`���9�&���8GvN�t�6$�	vז�"zT"�NOc(�iv�J�� ��x���6� QE���p��v����19ט�U�����;��G�~���H�qN�U6�z�C�`�+eU�m�і*����p��ѷ���W5�H5He�M�@'�)�iq,��p�fЕC4�R�2e
8@�g��9�t%	�x���6�0q~��d)��$�a��=_e�Ɖ:P��3<�3ӑp�-�����C��R�ֲT�ѻ\L�.a��"�/��EB�K]�����)z�"	��7��5R�*�V5#��]�mm��ƭRY�*.��V+JE,ay.��ƛ�ܞ�'�یLe%%EkX\M���'AKD�V_��:�`òM(�����x@d阙 ����	eI6!7j�WS�^ �}�/Y�����!J	�+쳮���-�QJR�^�"�z�l-����f���x��Va�p�i%��);K��c]@>��00Z�,$�B�EUV1�ƒ�3�	`]�e�t�RҪA��A����Pg[1�x9�+w�<o��`)�a���ؾ44��ޓ����T�j�>*i�}�j���J�7�i��l�ڰ_!��@��М��ָ�M��u�u.������U'�%��Aܚ�E)J�,h��٨Ȥq�%4��,*�S5ͬ']ʶ�%U.�����ikP2o\&!���X���=U�R᎒A�xǌ�M��k�zl����:�k�Y�4P��,�5k�G.�9
I�,��>4v�N8�#�GRN_{4��kgF@ґ����JR�6�9^!;�ϼu�����U��.ݹ��haB��fWj�0`ZQa�C%��y�aBƖy]��0`Y�/{�E���n@^L��0/�����b�Oq	��b7�b�$���i �WȬpz��$"�v@
v
��{�����D��ٞ���jw��ɋ��s�Ŭ�/��������	�|�GGǊ�6��ϷV��ti�z�t&: 4����z�(�p�-��_�H�h��	�@��E�O�_�9��qaP >��U��Q�(؇z��%���)��~� 