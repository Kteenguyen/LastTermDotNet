using System;
using System.Collections.Generic;

namespace FoodOrder.Models
{
    public partial class Order
    {
        public Order()
        {
            Details = new HashSet<Detail>();
            OrderDetails = new HashSet<OrderDetail>();
        }

        public int OrderId { get; set; }
        public string? OrderNo { get; set; }
        public int? ProductId { get; set; }
        public int? Quantity { get; set; }
        public int? UserId { get; set; }
        public string? Status { get; set; }
        public int? PaymentId { get; set; }
        public DateTime? OrderDate { get; set; }

        public virtual Payment? Payment { get; set; }
        public virtual Product? Product { get; set; }
        public virtual User? User { get; set; }
        public virtual ICollection<Detail> Details { get; set; }
        public virtual ICollection<OrderDetail> OrderDetails { get; set; }
    }
}
