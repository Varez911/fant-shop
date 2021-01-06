<template>
  <div class="cart">
    <HeaderFant />
    <!-- Breadcrumb Section Begin -->
    <div class="breacrumb-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-left">
            <div class="breadcrumb-text product-more">
              <router-link to="/"><i class="fa fa-home"></i>Home</router-link>
              <span>Shopping Cart</span>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Breadcrumb Section Begin -->
    <!-- Shopping Cart Section Begin -->
    <section class="shopping-cart spad">
      <div class="container">
        <div class="row">
          <div class="col-lg-8">
            <div class="row">
              <div class="col-lg-12">
                <div class="cart-table">
                  <table>
                    <thead>
                      <tr>
                        <th>Image</th>
                        <th class="p-name text-center">Product Name</th>
                        <th>Price</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td class="cart-pic first-row">
                          <img src="img/products/JAKET_LUAR_BERSABUK_3.jpg" />
                        </td>
                        <td class="cart-title first-row text-center">
                          <h5>Summer Coat Jacket</h5>
                        </td>
                        <td class="p-price first-row">650.000 IDR</td>
                        <td class="delete-item">
                          <a href="#"
                            ><i class="material-icons">
                              close
                            </i></a
                          >
                        </td>
                      </tr>
                      <tr>
                        <td class="cart-pic first-row">
                          <img src="img/products/KEMEJA_CROPPED_KOTAK-KOTAK_4.jpg" />
                        </td>
                        <td class="cart-title first-row text-center">
                          <h5>Batik Flanel Shirt</h5>
                        </td>
                        <td class="p-price first-row">340.000 IDR</td>
                        <td class="delete-item">
                          <a href="#"
                            ><i class="material-icons">
                              close
                            </i></a
                          >
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
              <div class="col-lg-8">
                <h4 class="mb-4 text-left">
                  Informasi Pembeli:
                </h4>
                <div class="user-checkout text-left">
                  <form>
                    <div class="form-group">
                      <label for="namaLengkap">Full Name</label>
                      <input
                        type="text"
                        class="form-control"
                        id="namaLengkap"
                        aria-describedby="namaHelp"
                        placeholder="Masukan Nama"
                      />
                    </div>
                    <div class="form-group">
                      <label for="namaLengkap">Email Address</label>
                      <input
                        type="email"
                        class="form-control"
                        id="emailAddress"
                        aria-describedby="emailHelp"
                        placeholder="Masukan Email"
                      />
                    </div>
                    <div class="form-group">
                      <label for="namaLengkap">Phone Number</label>
                      <input
                        type="text"
                        class="form-control"
                        id="noHP"
                        aria-describedby="noHPHelp"
                        placeholder="Masukan No. HP"
                      />
                    </div>
                    <div class="form-group">
                      <label for="alamatLengkap">Address</label>
                      <textarea
                        class="form-control"
                        id="alamatLengkap"
                        rows="3"
                      ></textarea>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="row">
              <div class="col-lg-12">
                <div class="proceed-checkout text-left">
                  <ul>
                    <li class="subtotal">
                      ID Transaction <span>#SH12000</span>
                    </li>
                    <li class="subtotal mt-3">Subtotal <span>990.000 IDR</span></li>
                    
                    <li class="subtotal mt-3">
                      Total Biaya <span>990.000 IDR</span>
                    </li>
                    <li class="subtotal mt-3">
                      Bank <span>BNI</span>
                    </li>
                    <li class="subtotal mt-3">
                      No. Rekening <span>4421 5212 1403</span>
                    </li>
                    <li class="subtotal mt-3">
                      Nama Penerima <span>Varez</span>
                    </li>
                  </ul>
                  <router-link to="/success"
                    ><a href="#" class="proceed-btn"
                      >PURCHASE</a
                    ></router-link
                  >
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Shopping Cart Section End -->
    <Footer/>
  </div>
</template>

<script>
import HeaderFant from "../components/HeaderFant.vue";
import Footer from "../components/Footer.vue";

export default {
  name: "cart",
  components: {
    HeaderFant,
    Footer
  },
  // props: ["id"],
};
</script>

<style></style>
