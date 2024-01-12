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
BZh91AY&SY-�� 5_�������������0�F� �  `�k}g�m����om�;+�;������}�����>{ֵ�:3�>���	C�Ғ�B����U#m��V���xI"h jR�dҞ��'�J~�&��L��x���S�Q�d�� I!d&�eOS�F����M=444 �hɠ� I&�!�6��iPd h �  �@  &����� Ѡ h �      �E! L5&4�ꞩ��FO)����D1� I����D�	�
y4I��&5��joB�&Ȍ&i4��#@=M �Sּ�R�q��m��:��pHyK��q2g���P���ͣpl�'A6[/J<���w�� ��L�'�NG�V�?]u�W9������:��X+��"�&��؍�͕ь��QW�.��}-��E������)r/DQ���
ƞ��Yh�tsَ�X�-������! ����JW��Zs�ߓ��`T=vլ6A�ȸ�6٢""�����SX����Q�VN��eC����ƈI���^+���$�h�vo"�_�y��"R��f��0�'H̚�X�£A���c;,�h�,�l� ���R�չC�5�D$r� u����K���FyIj")+y���'�����$3����3�ND�mQ&��`C=�j�ǎ���.�T!Z@�GJr�1�EB�16o���6�F���O������[�h&��Ky�٦$�g(^O�b4�mW��@�W�6�nڞ�}@��@��İ�L�Q>omZ���A����
�W	|v�<�'r�F�9v��%O���R{޳�ϟ��H��	�؎F�j���/kͳ�:�Qx� �m��o`�%��%�PA�	r%p�g��֗�n���D�������_(�����K�P̑-MI$H�Z�ԢX2��.�Ѹ��F��РX��.��hiM���5%��H���eT�	RN��Βz#N�"@B���c+�Kq��>L>f���/�^u�ؖ��>M�g�P���C�{�������L���P����˦��Z���&��b\�(Z�(��2�-�v�g(a������=�mT�Z��d���%�f��BKR��Ai[3�$��`�f������h��9�3�V1Vb�69eK��vb�p����QA�K@T�sV�����+�6\�6+9P'#v�����ak:o���&d&$�׆Ҫ�+����|)ŜN� �=�r��)!(K*?Oo�pK��-nB�\�W��G_��gS^��FC�`�z�E~Κ��'1�ݖK`��=�D����b(rKC�[���'���p�Z��.",��-ǫrw:��4wc~��m!�/=�~�׋�I$U;=n�*��D� �7E�)�T���R�J����fQTf�o��E
���m�p���z�����;�s�|�d�����y>���\�"�H`o��S�z@Z`['����d{�d�VMgK��*�m�n� >����p���*H%j�HҞ6B�Z����L�UQ��J�J`�$ʔ/��)�L�B�w��SW�O��L��Y���b�`F$B9��5F��{���e���yW:u̫A�I� yO�D����0��)�n}�rl��y�����w-����+�͛�
�h9�b=ا\텟-,�C�7&���e��:up���v�a7]��3!b3�n�����d��K�;i�7�.�K���5tq��P�j�y')7]�O�)!��	Y��:˥�"���ҭ�$,_u{�N�N��h'U^�0lb� <Q>>'�,B/��{�!�p���?sL#b�X9��\��<	�|y���n��$a�k�sY��f4�L|�X�&�N2�����)JR�UI��C�N����eV����&t���zC.#�ALB��{�~�x��Q�ߦ�u�F����_�!�8��S\1 �T(p[�00+�ڦeܞn���[�%%��x��r�)J��(��	8[��c� ��ݫ�{�M�d��\�R�-���i`a;�gR�*Ǆc	���Ap�DJUF�1�"ɡ&
E�f`Aa��k��+�A�a�I����8	����$9��	�Lla��$�,�E�X塉��$A��2ˋ>r!���C��D��fC��FK��Q���p>e")6z �7�I�)�K<�u��Ù���a�Y�%犵��36�cIq��KT�]��!b%tHP�nY�Q8�l[�eDc��L��gK�p�Nl7 ݥ��Z[���fV�Kl��ļң=��6��P�j��!�B��!V�ҳ��XTx��4#R 8:��+q`8� U����Vs0h�3)"L@�UQG=7����+eFHT�@�B˦���'r����6{�J���q�ɰɏ�S$�F�3�^>�lF�{2�;_mַ��D��9��C~���Y-;k6�*����O@p2d�(�",��X�
�Ȓ�}G�i8�i��eǑ��ڲ�8�9� ְ�y������k���_\�O*�.ղS�`�»��Z��+�aq��m��M7al����HC�C/��O-�qA�e�HL�p�����KG������`2�����
����)*�cR5�r}�Rb�	u��&��a;˓�#��\v/�a�r��4=��vr��(��ؐ`��!D��g׺�8�nL0~j�^�Q+\������4K���2��ͣX��_(]UC���!ł���aLZ��ְ��̐�����g��yX&�������@���T�n��bk[j����a���y�6x���
K7/���Ӱ
�lYV�{Il�?8�fC�L�|Y��j�2p���@���yt�}�?䪴� ���'oqĂ�m��D�Ⱦ!L|�C;B�,������&��8	�$��&�ߋ�Ό��FZ잪��@^�G-�-��t\���'��)RV�6��ni)���'讝epEq3Ir9)`d}Y����|���3S�f�G`���b��aZ�\���綬�{����mH9hOZ0jC�*���.�W1ur��p��cI��:��2���l�"g�ޒ��}�����B�z�IK�Q<�h+�!�)�g��_��D1�����B(�>�~���K���|���`	*=Tʕ�!�ĺn�I�h� �'F{�`��9��Ώ����8�Φ���!��C�맛.u��*�~h��v�ʞ�B
�����
�;��}�W����O� ��MURT�G��3k�!A����A#	؍�%��`*�5J��MF�X>�~1* 0��z� �@]���n��I�	�(#�2%é��a0|�		�S.ԗ0~򳦝�=Mm��$l�m	5Ǭ-����d�����3@�Ґi�Xz�=ڐ��
�cC�*6�� �ʂ����#�i�5�CR��!��%"��k�4�����0��g.�h\V���,�&���#��D��q��;J�-Nʩ����8f�BBFL��+P��y4�����E�iA�9��+*7؇g�{E��`e�/�I(p�%��%�+Z,ոP�E���(�*	4^��
��#PDEQ"H+*�������B���)���6�}.=T ��eᴛ�J @�6�R"A��ۆm)F%��-����{���]���BPz��1-� �Q�J9r���4��0B�H���Kl����	��F���@㑐���֪&��õ��vx���T�:�EJ�Y,������_�_Vh��z4]bpI���r�S:�m��9\�SM�h�\H�n5 �+؂Q�
�#ΚA�ˋг��.�*A����AI�R��΀����v���^�'�ʵ;������i���>�U!�>�x�y�(���NI$��$���x�:T7�DZ�=�w<*� �_`H��g
��3�b8Tږm%FNB�Z����n&ኞ�,웏>�w	�xv�2J-Wb�|�M(D�:��F@0b�o�=�&��~�� k�d?;��2��'W�A��:���oԽ8���${Rg4݈��\-�M��z����Bo�SʲBj(�@`�9E	�	s'LV�P'F���w�����|D�q�x�E�I��!z�q�%k��p<%oy�t�:�4
8yl�D+1_� hit���i<��T;�%t��8g%#���[=����^q��NC�
[�S`�:m"�)��C� ��� ��E���m�v�7�A���,�a)*q�q��WL=�*�����sP��u
*�
$QEJ��PUBT+1``��TH�DXEj
�Υׯ��K�+P��X����R]|��j�
|e��L6��)D�hֶ���z@c���Ȣ%Rи�EX"4�Pt�`����Z����F�bT�-k�!TZ��' 4f$y�������kڵ��lMZ�ɬ�ۭВ̈́FH�x ��!!uFi)PZ���,u�"|X��I:SP�;���a�ĘA6����p3�K��Qw�#�%x��!$���l{�R�9��Gj��X���RB�LC���/+��\��~@-�&~��P�KT�$�$�#J�v6P^0�P�@,!w�'x|K�I�cB�\#�n�o9�nf�5�s��IP1{�QEU]=��mтtƤ4hSDB��U�YB�kQ�o+dA2��np�,q���6��OLw�.����EP@N֟�K�f	�;���))��R��j��\4 xw�.z��(I	Zv���%��WH#����)|�k��B�H�,�!�C��J	c/�=�0�����
)�N��D��L ���(�w��v�6�^��V$�n?z�5Byz`V7��\�B�y4���P��eQ���N��+�F�T5�Z��@�6&7f1��E�1��D��7R�+k]��� )B<:,��V��X�7E�u��Q�֟����������A0���-m2{z;�N�>�o �>E� 0#�V*dg��!V�0�m����@<���!��9 r�|m�=RpG./���,f"L�"ԧ$�s�J��>��qjC*P%�	!��x�x��8!�ǥ�)'�5��@�sF��P-��9HT�,���Z��,�����K�Ꞟ�Nq����x��j���`HE}�/��t[�^��$̘dǉ#��'�R��K�o�Ӻ��:��WWe�{=�C�� \z���~ȍ�H]A�؂�#����A��HB�a���e�,h�  �1����w$S�	�q��