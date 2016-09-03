background-color: #bdbdbd
padding: 10px;
color: #fffff;
display: inline;

dari views
def stone_new(request):
        form = StoneForm()
    return render(request, 'stones/stone_edit.html', {'form': form})

<div class="row">
<div class="col s12 m4 l4">
<div class="card-panel blue darken-1" class="z-depth-5">
<h5>Ideal</h5>
<p class="flow-text" class="grey-text text-darken-3 lighten-3">Berupa bahan Batu Bata yang telah melalui pemotongan sesuai ukuran yang ideal untuk struktur bangunan</p>
</div>
</div>

<div class="col s12 m4 l4">
<div class="card-panel blue darken-1" class="z-depth-5">
<h5>Nat</h5>
<p class="flow-text" class="grey-text text-darken-3 lighten-3">Batu Bata dengan lebar 20 cm yang disambung memakai perekat, tidak memakai nat.
Akan tetapi bisa juga memakai nat, kami menyesuaikan sesuai permintaan konsumen</p>
</div>
</div>

<div class="col s12 m4 l4">
<div class="card-panel blue darken-1" class="z-depth-5">
<h5>Hebel</h5>
<p class="flow-text" class="grey-text text-darken-3 lighten-3">
Batu Bata memakai hebel sebagai bahan dasar dengan ukuran 20 x 60 x 10<br></p>
</div>
</div>
</div>

<ul id="nav-mobile" class="right hide-on-med-and-down">
<li><a href="produk.html">Produk</a></li>
<li><a href="badges.html">Proyek</a></li>
<li><a href="collapsible.html">Hubungi Kami</a></li>
</ul>

            <img class="materialboxed" src="">
            <img class="materialboxed" src="">
            <img class="materialboxed" src="">
            <img class="materialboxed" src="">
            <img class="materialboxed" src="">

<div class="col l7">
  <h1 class="grey"></h1>
  <h5 class="grey">halo</h5>
</div>
<div class="col l5">
</div>

          <div class="carousel">
            <intro class="carousel-item { width:300px }" href="#Showroom"><img src="{% static 'images/show1.png' %}"></intro>
            <intro class="carousel-item { width:300px }" href="#BatuBata"><img src="{% static 'images/show2.png' %}"></intro>
            <intro class="carousel-item { width:300px }" href="#LiteStone"><img src="{% static 'images/show3.png' %}"></intro>
            <intro class="carousel-item { width:300px }" href="#PurposeStone"><img src="{% static 'images/show4.png' %}"></intro>
            <intro class="carousel-item { width:300px }" href="#PebbleStone"><img src="{% static 'images/show5.png' %}"></intro>
          </div>

          // Initialize carousel
          $(document).ready(function(){
            $('.carousel').carousel({
            });
            autoplay()
            function autoplay() {
              $('.carousel').carousel('next');
              setTimeout(autoplay, 4500);
            }
