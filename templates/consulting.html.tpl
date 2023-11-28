<!DOCTYPE html>
<html lang="en">

<head>
  {% include 'lib/head-inner.html.tpl' %}
  <title>Iceberg Tech: Consulting</title>
</head>

<body>
  <div class="container-image">
    <!-- Header Start -->
    <div class="jumbotron">
      <div class="container rounded container-title text-center mt-5 pt-5">
        <h4 class="shineWelcome">Welcome <span>To</span></h4>
        <h4 class="shineWhite">Iceberg Tech</h4>
      </div>
    </div>
    <!-- Header End -->

    <section class="section rounded my-work" data-section="section2" id="consulting">
      <div class="container">
        <div class="section-heading">
          <h2>Consulting</h2>
          <div class="line-dec"></div>
          <span>Make your work my work</span>
        </div>
        <div class="row">
          <!-- Follow the pattern and serial number while adding your contribution -->
          <!-- Add a comment before adding your code. For example: "Contribution #__ " -->

<!--           
  3d printing
  networking
  pricing
 -->
          {%- for key, item in consulting.items() %}
          <!-- {{ key }} -->
          {%- if item.side == 'right' %}
          <div class="right-image-post">
            <div class="horizontalLine"></div>
            <div class="row">
              <div class="col-md-6">
                <div class="left-text">
                  <h4>{{ item.title }}</h4>
                  <p>
                    {{ item.description }}
                  </p>
                </div>
              </div>
              <div class="col-md-6">
                <div class="right-image">
                  <img src="{{ item.image }}" alt="" />
                </div>
              </div>
            </div>
          </div>
          {% else %}
          <div class="left-image-post">
            <div class="horizontalLine"></div>
            <div class="row">
              <div class="col-md-6">
                <div class="left-image">
                  <img src="{{ item.image }}" alt="" />
                </div>
              </div>
              <div class="col-md-6">
                <div class="right-text">
                  <h4>{{ item.title }}</h4>
                  <p>
                    {{ item.description }}
                  </p>
                </div>
              </div>
            </div>
          </div>
          {% endif %}
          {% endfor %}
        </div>
      </div>
    </section>

    <section>
      {% include "lib/footer.html.tpl" %}
    </section>
  </div>

  <!-- Scripts -->
  <!-- Here so it can see the scroll to top button -->
  <script src="assets/js/custom.js"></script>

</body>
</html>
