const winningBid = () => {
  const bidTable = document.querySelector(".bids")

  const highlightWinner = () => {
    if (bidTable) {
      const winningBid = bidTable.children[0]
      if (winningBid) {
        const lostBid = winningBid.nextElementSibling
        winningBid.classList.add("winning-bid")
        if (lostBid.classList.contains("winning-bid")) {
         lostBid.classList.remove("winning-bid")
        }
      }
    }
  }

  setInterval(highlightWinner, 200);
}

export {winningBid}
