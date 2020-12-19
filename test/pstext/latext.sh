#!/usr/bin/env bash
# Testing siimple Latex expressions in pstext
cat << EOF > t.txt
1 2 24p 20 LM Or alternatively, @\$\gamma = \sqrt{\frac{\rho_m - \rho_i}{\rho_m - \rho_l}}@\$
5.75 4 18p -20 RT Let @\$W(\mathbf{k},t) = \gamma \left (\frac{\rho_l - \rho_w}{\rho_m - \rho_l} \right ) H(\mathbf{k}) \Phi(\mathbf{k},t) = \gamma A H(\mathbf{k}) \Phi(\mathbf{k},t)@\$
3 1 42p,Times-Roman 0  BC This is @\$\Delta g = 2\pi\rho Gh@\$
EOF
gmt begin latext ps
	gmt text -R0/6/0/6 -JX16c -B -F+f+a+j t.txt
gmt end show
