const isAuction = () => {
  const checkboxSelector = document.querySelector("#art_is_for_auction")
  const auctionSelector = document.querySelector(".art_auction_end_time")
  checkboxSelector.addEventListener("click", () => {
    auctionSelector.classList.toggle("visible")
    })
  }

export {isAuction}
