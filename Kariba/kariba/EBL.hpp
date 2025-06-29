#pragma once

#include <vector>

namespace kariba {

void ebl_atten_gil(int size, const std::vector<double>& en, std::vector<double>& lum, double redshift);

}
