
function add_to_cart(pid, pname, pprice) {
    let cart = localStorage.getItem("cart");
    if (cart == null) {
        //no cart
        let products = [];
        let product = {productId: pid, productName: pname, productPrice: pprice, productQunatity: 1}

        products.push(product);

        localStorage.setItem("cart", JSON.stringify(products));
        console.log("Product is added ");
    } else {
        //cart is already present
        let pcart = JSON.parse(cart);   // js array
        let oldProduct = pcart.find((Item) => Item.productId == pid);
        if (oldProduct) {
            // we will increase the quantity
            oldProduct.productQunatity = oldProduct.productQunatity + 1;
            pcart.map((Item) => {
                if (Item.productId == oldProduct.productId) {
                    Item.productQunatity = oldProduct.productQunatity;
                }
            })
            localStorage.setItem("cart", JSON.stringify(pcart));
            console.log("Product is qunatity is added ");
        } else {

            // product already present
            let product = {productId: pid, productName: pname, productPrice: pprice, productQunatity: 1}
            pcart.push(product);
            localStorage.setItem("cart", JSON.stringify(pcart));
            console.log("Product is added ");
        }
    }
 

}

//update cart

function updateCart() {
    let cartString = localStorage.getItem("cart");
    let cart = JSON.parse(cartString);
    if (cart==0 || cart.length==0 ) {
        console.log("Cart is Empty !!");
        $(".cart-item").html("(0)");
        $(".cart-body").html("<h3>Cart does not have any item</h3>");
        $(".checkout-btn").addClass('disable');
    } else {
        //there is something
        console.log(cart);

    }

}
$(document).ready(function () {

    updateCart()
})


let menu = document.querySelector('#menu-bars');
let navbar = document.querySelector('.navbar');

window.onscroll = () => {
    menu.classList.remove('fa-time');
    navbar.classList.remove('active');
}

document.querySelector('#search-icon').onclick = () => {
    document.querySelector('#search-form').classList.toggle('active');
}
document.querySelector('#close').onclick = () => {
    document.querySelector('#search-form').classList.remove('active');
}


var swiper = new Swiper(".home-slider", {
    spaceBetween: 30,
    centeredSlides: true,
    autoplay: {
        delay: 2500,
        disableOnInteraction: false,
    },
    pagination: {
        el: ".swiper-pagination",
        clickable: true,
    },
    loop: true,
});

