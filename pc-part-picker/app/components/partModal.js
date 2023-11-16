






export default const PartModal = (currentPart, showModal) => {
    return (
      <Modal isOpen={showModal} onRequestClose={handleCloseModal}>
      {currentPart && (
        <div>
        <h2>{currentPart.part_name}</h2>
        <p>Price: {currentPart.price}</p>
        {/* Add any other details you want to display */}
        </div>
      )}
      </Modal>
    );
  };
