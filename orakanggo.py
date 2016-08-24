background-color: #bdbdbd
padding: 10px;
color: #fffff;
display: inline;

dari views
def stone_new(request):
        form = StoneForm()
    return render(request, 'stones/stone_edit.html', {'form': form})


<ul id="nav-mobile" class="right hide-on-med-and-down">
<li><a href="produk.html">Produk</a></li>
<li><a href="badges.html">Proyek</a></li>
<li><a href="collapsible.html">Hubungi Kami</a></li>
</ul>


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
