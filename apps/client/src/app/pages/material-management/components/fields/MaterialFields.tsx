function MaterialFields() {
  return (
    <div
      className='p-6 grid place-items-center grid-cols-11 text-lg font-bold font-roboto-mono
    text-[#1B263B]/60 w-full gap-4'
    >
      <div className='w-full'>ID</div>
      <div className='w-full col-span-2'>Title</div>
      <div className='w-full col-span-2'>Category</div>
      <div className='w-full'>Quantity</div>
      <div className='w-full'>Available</div>
      <div className='w-full'>Type</div>
      <div className='w-full text-center'>Info</div>
      <div className='w-full text-center'>Edit</div>
      <div className='w-full text-center'>Remove</div>
    </div>
  );
}

export default MaterialFields;
