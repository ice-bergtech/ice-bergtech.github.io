<!DOCTYPE html>
<html lang="en">

<head>
  {% include 'lib/head-inner.html.tpl' %}
  <title>Iceberg Tech</title>
</head>

<body>
  <div class="container-image">
    {% include "lib/header.html.tpl" %}

    <section class="section rounded services" data-section="section1" id="services" style="margin-bottom: 90px;">
      <div class="container">
        <div class="section-heading">
          <h1 class="trod">Products and Services</h1>
        </div>
        <div class="row">
          {%- for key, item in services.items() %}
          <div class="col-md-6 d-flex justify-content-center text-center">
            <a href="{{item.link}}" class="service-item">
              <img class="service-icon" src="{{item.icon}}"></img>
              <h2 class="trod">{{item.title}}</h2>
              {{item.subtitle}}
            </a>
          </div>
          {%- endfor %}
        </div>
      </div>
    </section>

    <section>
      {% include "lib/footer.html.tpl" %}
    </section>
  </div>

  <!-- Scripts -->
  <button onclick="window.scrollTo({top: 0, behavior: 'smooth'});" id="buttonToTop" title="Go to top"><i class="fa fa-arrow-up" aria-hidden="true"></i></button>
  <!-- Here so it can see the scroll to top button -->
  <script src="assets/js/custom.js"></script>

</body>

</html>
